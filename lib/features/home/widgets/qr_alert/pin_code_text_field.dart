part of 'qr_alert.dart';

class _PinCodeTextField extends StatefulWidget {
  final bool qrOpen;
  final bool showQrButton;
  final Function closeQr;
  final Function updateText;
  const _PinCodeTextField({
    required this.qrOpen,
    required this.showQrButton,
    required this.closeQr,
    required this.updateText,
    Key? key,
  }) : super(key: key);

  @override
  State<_PinCodeTextField> createState() => _PinCodeTextFieldState();
}

class _PinCodeTextFieldState extends State<_PinCodeTextField> {
  TextEditingController textEditingController = TextEditingController();
  late bool isLight =
      Theme.of(context).primaryColorBrightness == Brightness.light;
  late Color fillColor = Theme.of(context).primaryColor;
  late Color borderColor =
      isLight ? Colors.grey : Theme.of(context).primaryColorLight;

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: 4,
      animationType: AnimationType.fade,
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        borderRadius: BorderRadius.circular(5),
        fieldHeight: 40,
        fieldWidth: 30,
        activeFillColor: fillColor,
        inactiveFillColor: fillColor,
        selectedFillColor: fillColor,
        inactiveColor: borderColor,
        activeColor: borderColor,
        selectedColor: borderColor,
        disabledColor: borderColor,
      ),
      showCursor: true,
      cursorColor: isLight ? Colors.black : Colors.white,
      animationDuration: const Duration(milliseconds: 200),
      enableActiveFill: true,
      textStyle: TextStyle(
        color: isLight ? Colors.black : Colors.white,
      ),
      controller: textEditingController,
      onTap: () => widget.closeQr(),
      onChanged: (value) {
        widget.updateText(value);
      },
    );
  }
}
