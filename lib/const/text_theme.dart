import 'package:flutter/material.dart';

extension CustomTextTheme on TextTheme {
  TextStyle get userNameStyle {
    return const TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle get expensesStyle {
    return const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
    );
  }

  TextStyle get queueDetailsHeadingStyle {
    return TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: Colors.grey.shade700,
    );
  }

  TextStyle get popupMenuItemStyle {
    return const TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    );
  }

  TextStyle get appBarTextStyle {
    return const TextStyle(
      color: Colors.black,
      fontSize: 27,
      fontWeight: FontWeight.bold,
    );
  }
}
