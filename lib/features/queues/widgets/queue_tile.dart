part of 'queue_list.dart';

class QueueTile extends StatefulWidget {
  final QueueModel queueModel;
  const QueueTile({
    Key? key,
    required this.queueModel,
  }) : super(key: key);

  @override
  State<QueueTile> createState() => _QueueTileState();
}

class _QueueTileState extends State<QueueTile> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: tileHeight,
        color: Colors.white,
        child: _Body(
          color: colors[widget.queueModel.color] ?? Colors.white,
          name: widget.queueModel.name,
        ),
      ),
      onTap: () {
        context
            .read<AppBarBloc>()
            .add(RouteChangedEvent(widget.queueModel.name));
        context.router.push(QueueDetailsRoute(
          queueModel: widget.queueModel,
        ));
      },
    );
  }
}

class _Body extends StatefulWidget {
  final Color color;
  final String name;
  const _Body({
    Key? key,
    required this.color,
    required this.name,
  }) : super(key: key);

  @override
  State<_Body> createState() => _BodyState();
}

class _BodyState extends State<_Body> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 40,
        ),
        Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: Text(
            widget.name,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
