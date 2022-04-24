import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:qr_flutter/qr_flutter.dart';

import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/features.dart';

import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/features.dart';

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
  late String pincode;

  @override
  void initState() {
    super.initState();
    fetchPincode();
  }

  void fetchPincode() async {
    pincode =
        await ApiQueuesService.inviteUser(id: widget.queueDetailsModel.id);
    setState(() {
      pincodeFetched = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(AppLocalizations.of(context)!.translate('scan the qr code') ??
          'Scan the QR code'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomPaint(
              size: const Size.square(220),
              painter: _BackgroundPainter(customSize: 220),
              foregroundPainter: QrPainter(
                data: '11',
                version: QrVersions.auto,
                eyeStyle: QrEyeStyle(
                  eyeShape: QrEyeShape.square,
                  color: Colors.grey.shade900,
                ),
                dataModuleStyle: QrDataModuleStyle(
                  dataModuleShape: QrDataModuleShape.circle,
                  color: Colors.grey.shade900,
                ),
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
                    ? Text(pincode)
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

class _BackgroundPainter extends CustomPainter {
  double customSize;

  _BackgroundPainter({
    required this.customSize,
  });

  @override
  void paint(Canvas canvas, Size size) {
    var paint1 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;
    canvas.drawRect(Offset.zero & Size(customSize, customSize), paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
