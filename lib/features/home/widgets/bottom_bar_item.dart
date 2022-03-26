part of 'bottom_bar.dart';

class _BottomBarItem extends StatelessWidget {
  const _BottomBarItem({
    required this.title,
    required this.leadingIcon,
    required this.route,
    Key? key,
  }) : super(key: key);

  final String title;
  final Icon leadingIcon;
  final PageRouteInfo? route;

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
              leadingIcon,
              Text(
                title,
                style: const TextStyle(
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
      return route!;
    });
  }

  void _onTap(BuildContext _) async {
    var page = await buildPageAsync();
    if (route != null) {
      _.router.root.pop();
      _.router.popAndPush(page);
    }
  }
}
