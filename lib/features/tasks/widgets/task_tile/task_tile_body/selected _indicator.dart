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
            alignment: Alignment.center,
            duration: const Duration(milliseconds: 200),
            width:
                (widget.expanded ? 18 * 1.25 : 18) * (widget.selected ? 1 : 0),
            height:
                (widget.expanded ? 18 * 1.25 : 18) * (widget.selected ? 1 : 0),
            decoration: BoxDecoration(
              color: Colors.green,
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 1.2,
              ),
            ),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              width: 10 * (widget.selected ? 1 : 0),
              height: 10 * (widget.selected ? 1 : 0),
              child: FittedBox(
                fit: BoxFit.fill,
                child: Icon(
                  Icons.done,
                  color: widget.selected ? Colors.white : Colors.transparent,
                  size: 10,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
