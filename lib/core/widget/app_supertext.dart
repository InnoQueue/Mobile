import 'package:flavor_text/flavor_text.dart';
import 'package:flutter/material.dart';

class AppSuperText extends StatelessWidget {
  final String text;
  final TextStyle style;

  const AppSuperText(
    this.text, {
    Key? key,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlavorText(
      _toFlavorText(text),
      style: style,
    );
  }

  String _transformBolds(String s) {
    final t = s.split("**");
    List<String> sheets = [];
    for (int i = 0; i < t.length; i++) {
      if (i % 2 == 0) {
        sheets.add(t[i]);
      } else {
        sheets.add("<style fontWeight='bold'>${t[i]}</style>");
      }
    }
    return sheets.join('');
  }

  String _toFlavorText(String s) {
    s = _transformBolds(s);
    return s;
  }
}
