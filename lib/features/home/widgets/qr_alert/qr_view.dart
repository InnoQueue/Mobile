part of 'qr_alert.dart';

class _QrView extends StatefulWidget {
  final bool qrOpen;
  final bool showQrButton;
  final Function openQr;
  final Function hideQrButton;
  final Function shakeQr;
  const _QrView({
    required this.qrOpen,
    required this.showQrButton,
    required this.openQr,
    required this.hideQrButton,
    required this.shakeQr,
    Key? key,
  }) : super(key: key);

  @override
  State<_QrView> createState() => _QrViewState();
}

class _QrViewState extends State<_QrView> {
  late StreamSubscription subscription;
  QRViewController? controller;
  Barcode? result;
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');

  @override
  Widget build(BuildContext context) {
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
                  child: Icon(Icons.qr_code_rounded, size: constraint.biggest.height),
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
              onQRViewCreated: setSubscription,
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

  void setSubscription(QRViewController controller) {
    this.controller = controller;
    subscription = controller.scannedDataStream.listen((scanData) {
      join(scanData);
    });
  }

  void join(Barcode scanData) async {
    if (result == null || scanData.code != result!.code) {
      subscription.pause();
      bool joinResult =
          await ApiQueuesService.joinQueue(qrcode: scanData.code!);
      if (joinResult) {
        Navigator.pop(context);
        context.read<QueuesBloc>().add(const QueuesEvent.loadRequested());
      } else {
        setState(() {
          widget.shakeQr();
        });
      }
      result = scanData;
      subscription.resume();
    }
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
}
