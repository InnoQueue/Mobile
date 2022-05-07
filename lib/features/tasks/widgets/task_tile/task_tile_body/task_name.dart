part of 'task_tile_body.dart';

class _TaskName extends StatelessWidget {
  final String name;
  final bool isExpanded;
  const _TaskName({
    required this.name,
    required this.isExpanded,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedDefaultTextStyle(
        duration: const Duration(milliseconds: 200),
        child: Text(
          name,
          style: TextStyle(
            // ignore: deprecated_member_use
            color: Theme.of(context).primaryColorBrightness == Brightness.dark
                ? Colors.white
                : Colors.black,
          ),
        ),
        style: Theme.of(context).textTheme.tileNameTextStyle(isExpanded),
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
