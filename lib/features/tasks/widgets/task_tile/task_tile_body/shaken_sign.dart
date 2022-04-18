part of 'task_tile_body.dart';

class _ShakenSign extends StatelessWidget {
  final bool isExpanded;
  const _ShakenSign({required this.isExpanded, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: const Duration(milliseconds: 200),
      padding: EdgeInsets.only(left: 40 + (isExpanded ? 5 : 0)),
      child: const Text(
        "You've been shaken!",
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    );
  }
}
