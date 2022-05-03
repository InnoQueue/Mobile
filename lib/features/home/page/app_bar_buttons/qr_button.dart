part of '../home_page.dart';

class _QrButton extends StatelessWidget {
  const _QrButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: IconButton(
        icon: const Icon(
          Icons.qr_code_rounded,
          size: 30,
        ),
        onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => const QrAlert()),
      ),
    );
  }
}
