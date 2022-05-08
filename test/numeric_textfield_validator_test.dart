import 'package:flutter_test/flutter_test.dart';
import 'package:inno_queue/helpers/text_field_validator.dart';

void main() {
  test('empty string - error', () {
    var result = TextFieldValidator.validateNumeric('');
    expect(result, "Can't be empty");
  });

  test('three digits after comma - error', () {
    var result = TextFieldValidator.validateNumeric('3,333');
    expect(result, "Wrong format");
  });

  test('three digits after dot - error', () {
    var result = TextFieldValidator.validateNumeric('3.333');
    expect(result, "Wrong format");
  });

  test('zero digits after dot - error', () {
    var result = TextFieldValidator.validateNumeric('3.');
    expect(result, "Wrong format");
  });

  test('non-numeric - error', () {
    var result = TextFieldValidator.validateNumeric('cheburek');
    expect(result, "Wrong format");
  });

  test('two digits after comma - ok', () {
    var result = TextFieldValidator.validateNumeric('11,00');
    expect(result, null);
  });

  test('one digit after dot - ok', () {
    var result = TextFieldValidator.validateNumeric('11.0');
    expect(result, null);
  });
}