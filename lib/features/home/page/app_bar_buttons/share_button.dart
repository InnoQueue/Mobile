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

              String path = await generatePath(queueDetails, pincode);

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
        },
      ),
    );
  }

  Future<String> generatePath(
    QueueDetailsModel queueDetails,
    PincodeModel pincode,
  ) async {
    ScreenshotController screenshotController = ScreenshotController();
    late String path;

    await screenshotController
        .captureFromWidget(await toShare(queueDetails, pincode))
        .then((capturedImage) async {
      Directory tempDir = await getTemporaryDirectory();
      String tempPath = tempDir.path;
      final ts = DateTime.now().millisecondsSinceEpoch.toString();
      path = '$tempPath/$ts.png';
      await File(path).writeAsBytes(capturedImage);
    });

    return path;
  }

  Future<Widget> toShare(
    QueueDetailsModel queueDetails,
    PincodeModel pincode,
  ) async {
    return Container(
      width: 350,
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            queueDetails.name,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 300,
            width: 300,
            child: QrImage(
              dataModuleStyle: const QrDataModuleStyle(
                dataModuleShape: QrDataModuleShape.circle,
                color: Color(0xFF353535),
              ),
              eyeStyle: const QrEyeStyle(
                eyeShape: QrEyeShape.square,
                color: Color(0xFF353535),
              ),
              backgroundColor: Colors.white,
              data: pincode.qrcode,
              version: QrVersions.auto,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            pincode.pincode,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
