part of '../home_page.dart';

class _ShareButton extends StatefulWidget {
  const _ShareButton({Key? key}) : super(key: key);

  @override
  State<_ShareButton> createState() => _ShareButtonState();
}

class _ShareButtonState extends State<_ShareButton> {
  GlobalKey globalKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
      builder: (context, state) => state.maybeWhen(
          orElse: () => Wrap(),
          queueOpened: (queueDetails, editable) {
            return IconButton(
              icon: const Icon(
                Icons.share,
                size: 25,
              ),
              onPressed: () async {
                PincodeModel pincode =
                    await ApiQueuesService.inviteUser(id: queueDetails.id);

                QrImage qrImage = QrImage(
                  dataModuleStyle: const QrDataModuleStyle(
                    dataModuleShape: QrDataModuleShape.circle,
                    color: Colors.black,
                  ),
                  backgroundColor: Colors.white,
                  data: pincode.qrcode,
                  version: QrVersions.auto,
                );

                ScreenshotController screenshotController =
                    ScreenshotController();
                late File customFile;
                late String path;

                await screenshotController
                    .captureFromWidget(qrImage)
                    .then((capturedImage) async {
                  Directory tempDir = await getTemporaryDirectory();
                  String tempPath = tempDir.path;
                  final ts = DateTime.now().millisecondsSinceEpoch.toString();
                  path = '$tempPath/$ts.png';
                  customFile = await File(path).writeAsBytes(capturedImage);
                });

                await Share.shareFiles(
                  [path],
                  text: (AppLocalizations.of(context)!.translate(
                            "join this queue",
                          ) ??
                          "Join this queue") +
                      " \"${queueDetails.name}\" " +
                      (AppLocalizations.of(context)!.translate(
                            "on InnoQueue using this QR-code or the pin-code:",
                          ) ??
                          "Join this queue") +
                      " ${pincode.pincode}",
                );
              },
            );
          }),
    );
  }
}
