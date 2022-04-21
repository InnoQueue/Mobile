import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/features.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/src/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

part 'pin_code_text_field.dart';
part 'qr_view.dart';

class QrAlert extends StatefulWidget {
  const QrAlert({Key? key}) : super(key: key);

  @override
  State<QrAlert> createState() => _QrAlertState();
}

class _QrAlertState extends State<QrAlert> with SingleTickerProviderStateMixin {
  String? currentText;

  bool qrOpen = true;
  bool showQrButton = false;

  late AnimationController _controller;
  final Tween<Offset> _tween =
      Tween(begin: Offset.zero, end: const Offset(0.000001, 0.0));

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Scan QR code'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IntrinsicHeight(
            child: _QrView(
              qrOpen: qrOpen,
              showQrButton: showQrButton,
              openQr: () {
                setState(() {
                  qrOpen = true;
                });
              },
              hideQrButton: () {
                setState(() {
                  showQrButton = false;
                });
              },
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Text(
              'or enter code',
              style: TextStyle(color: Colors.black),
            ),
          ),
          SizedBox(
            width: 150,
            child: SlideTransition(
              transformHitTests: false,
              position: _tween.animate(CurvedAnimation(
                  parent: _controller, curve: const ShakeCurve())),
              child: _PinCodeTextField(
                qrOpen: qrOpen,
                showQrButton: showQrButton,
                closeQr: () {
                  if (qrOpen) {
                    setState(() {
                      qrOpen = !qrOpen;
                      showQrButton = true;
                    });
                  }
                },
                updateText: (value) {
                  currentText = value;
                },
              ),
            ),
          ),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.black),
          ),
        ),
        TextButton(
          onPressed: () => joinQueue(currentText ?? ''),
          child: const Text(
            'OK',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }

  void joinQueue(String code) async {
    bool joinResult = await ApiQueuesService.joinQueue(pincode: code);
    if (joinResult) {
      Navigator.pop(context);
      context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
    } else {
      setState(() {
        _controller.reset();
        _controller.forward();
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ShakeCurve extends Curve {
  const ShakeCurve();

  @override
  double transformInternal(double t) {
    return 2 * 100000 * (0.5 - (0.5 - Curves.bounceOut.transform(t)).abs());
  }
}
