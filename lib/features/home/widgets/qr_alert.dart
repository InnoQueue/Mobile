import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrAlert extends StatefulWidget {
  const QrAlert({Key? key}) : super(key: key);

  @override
  State<QrAlert> createState() => _QrAlertState();
}

class _QrAlertState extends State<QrAlert> with SingleTickerProviderStateMixin {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;
  String? currentText;
  TextEditingController textEditingController = TextEditingController();
  bool qrOpen = true;
  bool showQrButton = false;

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller!.pauseCamera();
    } else if (Platform.isIOS) {
      controller!.resumeCamera();
    }
  }

  void readQr() async {
    if (result != null) {
      controller!.pauseCamera();
      controller!.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    readQr();
    return AlertDialog(
      title: const Text('Scan QR code'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IntrinsicHeight(
            child: AnimatedContainer(
              padding: const EdgeInsets.only(top: 15),
              duration: const Duration(milliseconds: 200),
              height: qrOpen ? 260 : 45,
              width: qrOpen ? 260 : 45,
              child: showQrButton
                  ? GestureDetector(
                      child: LayoutBuilder(builder: (context, constraint) {
                        return Opacity(
                          opacity: (260 - constraint.biggest.height) / 260,
                          child: Icon(Icons.qr_code,
                              size: constraint.biggest.height),
                        );
                      }),
                      onTap: () {
                        setState(() {
                          FocusManager.instance.primaryFocus?.unfocus();
                          qrOpen = true;
                        });
                      },
                    )
                  : QRView(
                      key: qrKey,
                      onQRViewCreated: _onQRViewCreated,
                      overlay: QrScannerOverlayShape(
                        borderColor: Colors.white,
                        cutOutHeight: 200,
                        cutOutWidth: 200,
                        borderRadius: 10,
                      ),
                    ),
              onEnd: () {
                if (qrOpen) {
                  setState(() {
                    showQrButton = false;
                  });
                }
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
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              animationType: AnimationType.fade,
              pinTheme: PinTheme(
                shape: PinCodeFieldShape.box,
                borderRadius: BorderRadius.circular(5),
                fieldHeight: 40,
                fieldWidth: 30,
                activeFillColor: Colors.white,
                inactiveFillColor: Colors.white,
                selectedFillColor: Colors.white,
                inactiveColor: Colors.grey,
                activeColor: Colors.grey,
                selectedColor: Colors.grey,
                disabledColor: Colors.grey,
              ),
              showCursor: true,
              cursorColor: Colors.black,
              animationDuration: const Duration(milliseconds: 200),
              enableActiveFill: true,
              controller: textEditingController,
              onTap: () {
                setState(() {
                  if (qrOpen) {
                    qrOpen = !qrOpen;
                    showQrButton = true;
                  } else {
                    qrOpen = !qrOpen;
                  }
                });
              },
              onChanged: (value) {
                setState(() {
                  currentText = value;
                });
              },
            ),
          )
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

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }
}
