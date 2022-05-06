import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/shared/models/pincode/pincode_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

import '../../features.dart';

class ShareButton extends StatefulWidget {
  const ShareButton({Key? key}) : super(key: key);

  @override
  State<ShareButton> createState() => ShareButtonState();
}

class ShareButtonState extends State<ShareButton> {
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
              _onLoading(queueDetails);
            },
          );
        },
      ),
    );
  }

  void _onLoading(
    QueueDetailsModel queueDetails,
  ) async {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SizedBox(
          child: AlertDialog(
            content: Container(
              width: 50,
              height: 50,
              color: Theme.of(context).primaryColor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Text('Exporting'),
                  CircularProgressIndicator(
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );

    PincodeModel? pincode =
        await ApiQueuesService.inviteUser(id: queueDetails.id);

    if (pincode == null) {
      Navigator.of(context).pop();
      return;
    }

    generatePath(queueDetails, pincode).then(
      (value) async {
        Navigator.pop(context);
        await Share.shareFiles(
          [value],
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
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: 300,
                width: 300,
                child: QrImage(
                  dataModuleStyle: const QrDataModuleStyle(
                    dataModuleShape: QrDataModuleShape.square,
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
              Image.asset(
                'images/logo_outlined.png',
                width: 70,
                height: 70,
              ),
            ],
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
