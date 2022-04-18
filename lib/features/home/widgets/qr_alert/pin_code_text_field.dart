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
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        selectedFillColor: Colors.white,
        inactiveColor: Colors.grey,
        activeColor: Colors.grey,
        selectedColor: Colors.grey,
        disabledColor: Colors.grey,
      ),
      showCursor: true,
      cursorColor: Colors.black,
      animationDuration: const Duration(milliseconds: 200),
      enableActiveFill: true,
      controller: textEditingController,
      onTap: () => widget.closeQr(),
      onChanged: (value) {
        widget.updateText(value);
      },
    );
  }
}
