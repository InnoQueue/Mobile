import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/features.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
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

class _QrAlertState extends State<QrAlert> with TickerProviderStateMixin {
  String? currentText;

  bool qrOpen = true;
  bool showQrButton = false;

  late AnimationController _controller;
  late AnimationController _qrController;
  final Tween<Offset> _tween =
      Tween(begin: Offset.zero, end: const Offset(0.000001, 0.0));

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);

    _qrController = AnimationController(
        duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.translate('scan qr code') ??
          'Scan QR code'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IntrinsicHeight(
            child: SlideTransition(
              transformHitTests: false,
              position: _tween.animate(CurvedAnimation(
                  parent: _qrController, curve: const ShakeCurve(coef: 0.75))),
              child: _QrView(
                qrOpen: qrOpen,
                showQrButton: showQrButton,
                shakeQr: shakeQr,
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
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Text(
              (AppLocalizations.of(context)!.translate('or enter pin-code') ??
                      'or enter pin-code') +
                  ':',
            ),
          ),
          SizedBox(
            width: 200,
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
          child: Text(
            AppLocalizations.of(context)!.translate('cancel') ?? 'Cancel',
          ),
        ),
        TextButton(
          onPressed: () => joinQueue(currentText ?? ''),
          child: Text(
            AppLocalizations.of(context)!.translate('ok') ?? 'OK',
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

  void shakeQr() {
    setState(() {
      _qrController.reset();
      _qrController.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class ShakeCurve extends Curve {
  final double coef;
  const ShakeCurve({this.coef = 1});

  @override
  double transformInternal(double t) {
    return coef *
        2 *
        100000 *
        (0.5 - (0.5 - Curves.bounceOut.transform(t)).abs());
  }
}
