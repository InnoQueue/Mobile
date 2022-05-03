part of 'bottom_bar.dart';

class _BottomBarItem extends StatefulWidget {
  const _BottomBarItem({
    required this.title,
    required this.leadingIcon,
    required this.route,
    required this.setActive,
    required this.setShowNotification,
    this.active = false,
    Key? key,
  }) : super(key: key);

  final String title;
  final IconData leadingIcon;
  final PageRouteInfo? route;
  final Function setActive;
  final Function setShowNotification;
  final bool active;

  @override
  State<_BottomBarItem> createState() => _BottomBarItemState();
}

class _BottomBarItemState extends State<_BottomBarItem>
    with WidgetsBindingObserver {
  late bool _active;
  bool showNotification = false;

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    checkNewNotifications().then((result) {
      setState(() {});
    });

    WidgetsBinding.instance!.addObserver(this);
    _active = widget.active;

    FirebaseMessaging.onMessage.listen((RemoteMessage msg) {
      setState(() {
        if (msg.notification != null) {
          showNotification = true;
        }
      });
    });

    FirebaseMessaging.onBackgroundMessage((RemoteMessage? msg) async {
      if (msg != null) {
        print("new message in background: ${msg.data}");
        if (msg.notification != null) {
          print("also notification!");
        }
      }
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    switch (state) {
      case AppLifecycleState.resumed:
        await checkNewNotifications();
        setState(() {});
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        child: Container(
          color: Theme.of(context).primaryColor,
          height: 70,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  Icon(
                    widget.leadingIcon,
                    size: 30,
                    color: _active
                        ? (Theme.of(context).primaryColorBrightness ==
                                Brightness.dark
                            ? Colors.white
                            : Colors.black)
                        : Colors.grey,
                  ),
                  if (widget.route!.routeName == NotificationsRoute.name &&
                      showNotification)
                    const Positioned(
                      top: 0,
                      right: 0,
                      child: Icon(Icons.brightness_1,
                          size: 10, color: Colors.redAccent),
                    )
                ],
              ),
              Text(
                AppLocalizations.of(context)!.translate(widget.title) ??
                    widget.title,
                style: TextStyle(
                  color: _active
                      ? (Theme.of(context).primaryColorBrightness ==
                              Brightness.dark
                          ? Colors.white
                          : Colors.black)
                      : Colors.grey,
                  fontSize: 13,
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
    var page = await buildPageAsync();
    if (page.routeName != TasksRoute.name) {
      context.read<SelectTasksBloc>().add(const SelectTasksEvent.unselect());
    }

    if (page.routeName == NotificationsRoute.name) {
      widget.setShowNotification(false);
    } else if (context.router.current.name == NotificationsRoute.name) {
      widget.setShowNotification(false);
    }

    if (widget.route != null) {
      getIt<AppRouter>().root.pop();
      if (context.router.stack.length <= 1) {
        getIt<AppRouter>().push(page);
      } else {
        getIt<AppRouter>().replace(page);
      }
    }
  }

  void setAtive(bool active) {
    setState(() {
      _active = active;
    });
  }

  Future<void> checkNewNotifications() async {
    showNotification = await ApiNotificationsService.getNew();
  }
}
