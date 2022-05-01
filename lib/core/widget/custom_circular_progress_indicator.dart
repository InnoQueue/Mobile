import 'package:flutter/material.dart';

class CustomCircularProgressIndicator extends StatefulWidget {
  const CustomCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  State<CustomCircularProgressIndicator> createState() =>
      _CustomCircularProgressIndicatorState();
}

class _CustomCircularProgressIndicatorState
    extends State<CustomCircularProgressIndicator> {
  bool timeOut = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 100), () {
      if (mounted) {
        setState(() {
          timeOut = true;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return timeOut
        ? const CircularProgressIndicator(color: Colors.grey)
        : Wrap();
  }
}
