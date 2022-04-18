import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
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
              ))
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
          onPressed: () => Navigator.pop(context, 'OK'),
          child: const Text(
            'OK',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
