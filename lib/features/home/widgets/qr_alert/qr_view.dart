part of 'qr_alert.dart';

class _QrView extends StatefulWidget {
  final bool qrOpen;
  final bool showQrButton;
  final Function openQr;
  final Function hideQrButton;
  const _QrView({
    required this.qrOpen,
    required this.showQrButton,
    required this.openQr,
    required this.hideQrButton,
    Key? key,
  }) : super(key: key);

  @override
  State<_QrView> createState() => _QrViewState();
}

class _QrViewState extends State<_QrView> {
  QRViewController? controller;
  Barcode? result;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
    readQr();
    return AnimatedContainer(
      padding: const EdgeInsets.only(top: 15),
      duration: const Duration(milliseconds: 200),
      height: widget.qrOpen ? 260 : 45,
      width: widget.qrOpen ? 260 : 45,
      child: widget.showQrButton
          ? GestureDetector(
              child: LayoutBuilder(builder: (context, constraint) {
                return Opacity(
                  opacity: (260 - constraint.biggest.height) / 260,
                  child: Icon(Icons.qr_code, size: constraint.biggest.height),
                );
              }),
              onTap: () {
                setState(() {
                  FocusManager.instance.primaryFocus?.unfocus();
                  widget.openQr();
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
        if (widget.qrOpen) {
          widget.hideQrButton();
        }
      },
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
}
