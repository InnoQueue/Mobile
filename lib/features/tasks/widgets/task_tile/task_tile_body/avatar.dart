part of 'task_tile_body.dart';

class _Avatar extends StatelessWidget {
  final String color;
  final bool isExpanded;
  const _Avatar({
    required this.color,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: isExpanded ? 50 : 40,
      height: isExpanded ? 50 : 40,
      decoration: BoxDecoration(
        color: colors[color] ?? Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}
