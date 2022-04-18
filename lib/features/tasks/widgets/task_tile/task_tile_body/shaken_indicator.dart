part of 'task_tile_body.dart';

class _ShakenIndicator extends StatelessWidget {
  final bool isImportant;
  final bool isExpanded;
  const _ShakenIndicator({
    required this.isImportant,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      child: isImportant
          ? AnimatedOpacity(
              opacity: isExpanded ? 0 : 1,
              duration: const Duration(milliseconds: 200),
              child: Container(
                width: 10,
                height: 10,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            )
          : null,
    );
  }
}
