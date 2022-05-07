
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inno_queue/features/home/widgets/share_button.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/shared/models/pincode/pincode_model.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:inno_queue/core/api/api_queues.dart';

import '../../features.dart';

class InviteUserAlert extends StatefulWidget {
  final QueueDetailsModel queueDetailsModel;
  const InviteUserAlert({
    required this.queueDetailsModel,
    Key? key,
  }) : super(key: key);

  @override
  State<InviteUserAlert> createState() => _InviteUserAlertState();
}

class _InviteUserAlertState extends State<InviteUserAlert> {
  bool pincodeFetched = false;
  late PincodeModel? pincode;

  @override
  void initState() {
    super.initState();
    fetchPincode();
  }

  void fetchPincode() async {
    pincode =
        await ApiQueuesService.inviteUser(id: widget.queueDetailsModel.id);
    setState(() {
      if (pincode != null) {
        pincodeFetched = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Text((AppLocalizations.of(context)!
                        .translate('scan the qr code for') ??
                    'Scan the QR code for') +
                '\n${widget.queueDetailsModel.name}:'),
          ),
          const ShareButton(),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: pincodeFetched
                ? SizedBox(
                    width: 220,
                    height: 220,
                    child: QrImage(
                      dataModuleStyle: const QrDataModuleStyle(
                        dataModuleShape: QrDataModuleShape.square,
                        color: Color(0xFF353535),
                      ),
                      eyeStyle: const QrEyeStyle(
                        eyeShape: QrEyeShape.square,
                        color: Color(0xFF353535),
                      ),
                      embeddedImage:
                          const AssetImage('images/logo_outlined.png'),
                      embeddedImageStyle: QrEmbeddedImageStyle(
                        size: const Size(50, 50),
                      ),
                      backgroundColor: Colors.white,
                      data: pincode!.qrcode,
                      version: QrVersions.auto,
                    ),
                  )
                : const SizedBox(
                    height: 220,
                    width: 220,
                    child: SpinKitThreeBounce(
                      size: 20,
                      color: Colors.grey,
                    ),
                  ),
          ),
          Text(
            '${AppLocalizations.of(context)!.translate('or share the pin-code') ?? 'or share the pin-code'}:',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: SizedBox(
              height: 25,
              child: Center(
                child: pincodeFetched
                    ? Text(pincode!.pincode)
                    : const SpinKitThreeBounce(
                        size: 20,
                        color: Colors.grey,
                      ),
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
      ],
    );
  }
}

// class _BackgroundPainter extends CustomPainter {
//   double customSize;
//
//   _BackgroundPainter({
//     required this.customSize,
//   });
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     var paint1 = Paint()
//       ..color = Colors.white
//       ..style = PaintingStyle.fill;
//     canvas.drawRect(Offset.zero & Size(customSize, customSize), paint1);
//   }
//
//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) => true;
// }
