part of 'task_tile_body.dart';

class _SelectedIndicator extends StatefulWidget {
  final bool expanded;
  final bool selected;
  const _SelectedIndicator(
      {required this.expanded, required this.selected, Key? key})
      : super(key: key);

  @override
  State<_SelectedIndicator> createState() => _SelectedIndicatorState();
}

class _SelectedIndicatorState extends State<_SelectedIndicator> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      width: (widget.expanded ? 18 * 1.25 : 18),
      height: (widget.expanded ? 18 * 1.25 : 18),
      child: Stack(
        alignment: Alignment.center,
        children: [
          SizedBox(
            height: widget.expanded ? 18 * 1.25 : 18,
            width: widget.expanded ? 18 * 1.25 : 18,
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 200),
            width:
                (widget.expanded ? 18 * 1.25 : 18) * (widget.selected ? 1 : 0),
            height:
                (widget.expanded ? 18 * 1.25 : 18) * (widget.selected ? 1 : 0),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.white,
                width: 1.2,
              ),
            ),
            child: const Icon(
              Icons.done,
              color: Colors.white,
              size: 10,
            ),
          ),
        ],
      ),
    );
  }
}
