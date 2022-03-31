part of 'bottom_bar.dart';

class _BottomBarItem extends StatefulWidget {
  _BottomBarItem({
    required this.title,
    required this.leadingIcon,
    required this.route,
    this.active = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final IconData leadingIcon;
  final PageRouteInfo? route;

  bool active;

  @override
  State<_BottomBarItem> createState() => _BottomBarItemState();
}

class _BottomBarItemState extends State<_BottomBarItem> {
  late bool _active;

  @override
  void initState() {
    super.initState();
    _active = widget.active;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: Colors.white,
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                widget.leadingIcon,
                size: 30,
                color: _active ? Colors.black : Colors.grey,
              ),
              Text(
                widget.title,
                style: TextStyle(
                  color: _active ? Colors.black : Colors.grey,
                  fontSize: 15,
                ),
              )
            ],
          ),
        ),
        onTap: () => _onTap(context),
      ),
    );
  }

  Future<PageRouteInfo> buildPageAsync() async {
    return Future.microtask(() {
      return widget.route!;
    });
  }

  void _onTap(BuildContext _) async {
    _.findAncestorStateOfType<_BottomBarState>()!.setActive(widget);
    var page = await buildPageAsync();
    if (widget.route != null) {
      _.router.root.pop();
      _.router.popAndPush(page);
    }
  }

  void setAtive(bool active) {
    setState(() {
      _active = active;
    });
  }
}
