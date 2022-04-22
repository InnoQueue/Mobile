import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inno_queue/core/api/api_queues.dart';
import 'package:inno_queue/features/features.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qr_flutter/qr_flutter.dart';

class InviteUserAlert extends StatefulWidget {
  final QueueModel queueModel;
  const InviteUserAlert({required this.queueModel, Key? key}) : super(key: key);

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
    pincode = await ApiQueuesService.inviteUser(queue: widget.queueModel);
    setState(() {
      pincodeFetched = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Scan the QR code'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: CustomPaint(
              size: const Size.square(200),
              painter: QrPainter(
                data: widget.queueModel.link,
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
          const Text(
            'or share the code',
            style: TextStyle(color: Colors.black),
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
          child: const Text(
            'Cancel',
            style: TextStyle(color: Colors.black),
          ),
        ),
      ],
    );
  }
}
