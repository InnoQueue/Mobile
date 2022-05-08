class TextFieldValidator {
  static String? validate(String? value) {
    if (value == null || value.isEmpty) {
      return "Can't be empty";
    }
    return null;
  }

  static String? validateNumeric(String? value) {
    if (value == null || value.isEmpty) {
      return "Can't be empty";
    } else {
      value = value.replaceAll(',', '.');

      double? result = double.tryParse(value);

      if (result == null) {
        return "Wrong format";
      } else {
        if (!value.contains('.')) return null;
        var numberOfFractionDigits =
            value.substring(value.indexOf('.') + 1).length;
        if (numberOfFractionDigits > 2 || numberOfFractionDigits < 1) {
          return "Wrong format";
        } else {
          return null;
        }
      }
    }
  }
}
