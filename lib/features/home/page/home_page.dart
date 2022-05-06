import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:inno_queue/const/const.dart';
import 'package:inno_queue/features/home/widgets/invite_user_alert.dart';
import 'package:inno_queue/features/home/widgets/widgets.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/routes/app_router.dart';
import 'package:inno_queue/shared/bloc/appbar/appbar_bloc.dart';
import 'package:inno_queue/shared/bloc/edit_queue_bloc/edit_queue_bloc.dart';
import 'package:inno_queue/shared/bloc/select_tasks_bloc/select_tasks_bloc.dart';
import 'package:inno_queue/shared/bloc/server_error_bloc/server_error_bloc.dart';
import '../../../const/const.dart';

import '../../features.dart';

part 'app_bar_buttons/back_button.dart';
part 'app_bar_buttons/add_button.dart';
part 'app_bar_buttons/animated_button.dart';
part 'app_bar_buttons/qr_button.dart';
part 'app_bar_buttons/more_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

GlobalKey homePageScaffoldKey = GlobalKey();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return AutoRouter(
      builder: (context, child) {
        final router = context.router;

        return BlocBuilder<SelectTasksBloc, SelectTasksState>(
          builder: (context, state) {
            bool selected = false;
            int counter = 0;
            state.maybeWhen(
              orElse: () {},
              selected: (number) {
                selected = true;
                counter = number;
              },
            );

            return BlocBuilder<AppBarBloc, String>(
              builder: (context, state) {
                return BlocBuilder<QueueDetailsBloc, QueueDetailsState>(
                    builder: (context, state) {
                  return BlocBuilder<ServerErrorBloc, ServerErrorState>(
                      builder: (context, state) {
                    state.when(
                        couldNotUpdate: () => _showToast("Could not update"),
                        serverError: () => _showToast("Server error"),
                        internetConnectionError: () =>
                            _showToast("No Internet connection"),
                        initial: () => {},
                        connectionTimeout: () =>
                            _showToast("Connection timeout"));
                    context
                        .read<ServerErrorBloc>()
                        .add(const ServerErrorEvent.initial());
                    return Scaffold(
                      key: homePageScaffoldKey,
                      resizeToAvoidBottomInset: false,
                      appBar: _appBarBuilder(
                        router,
                        context,
                        selected: selected,
                        number: counter,
                      ),
                      body: child,
                      bottomNavigationBar: BottomBar(
                        currentRoute: router.current.route.name,
                      ),
                      floatingActionButton:
                          (context.router.current.name == QueuesRoute.name)
                              ? const _AddButton()
                              : null,
                    );
                  });
                });
              },
            );
          },
        );
      },
    );
  }

  PreferredSizeWidget? _appBarBuilder(StackRouter _, BuildContext context,
      {required bool selected, required int number}) {
    return AppBar(
      title: _getAppBarTitle(selected, _.current.name, number),
      leading: _getLeading(selected, _.current.name),
      actions: _getAppBarActions(selected, _.current.name),
      elevation: 0,
      toolbarHeight: 65,
      systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness:
              Brightness.dark // For Android (dark icons) For iOS (dark icons)
          ),
    );
  }

  Text _getAppBarTitle(bool selected, String routeName, int number) {
    late String title;
    switch (routeName) {
      case TasksRoute.name:
        title = AppRes.todoTasks;
        break;
      case QueuesRoute.name:
        title = AppRes.queues;
        break;
      case NotificationsRoute.name:
        title = AppRes.notifications;
        break;
      case SettingsRoute.name:
        title = AppRes.settings;
        break;
      case NotificationSettingsRoute.name:
        title = AppRes.notificationSettings;
        break;
      case ThemeSettingsRoute.name:
        title = AppRes.themeSettings;
        break;
      case LanguageSettingsRoute.name:
        title = AppRes.languageSettings;
        break;
      case QueueDetailsRoute.name:
        title = context.read<AppBarBloc>().state;
        break;
      default:
        title = routeName;
    }

    title = AppLocalizations.of(context)!.translate(title) ?? title;

    return !(selected || title == TasksRoute.name)
        ? Text(
            title,
            style: Theme.of(context).textTheme.appBarTextStyle,
          )
        : Text(
            number.toString(),
            style: Theme.of(context)
                .textTheme
                .appBarTextStyle
                .copyWith(fontSize: 20, fontWeight: FontWeight.w600),
          );
  }

  List<Widget> _getAppBarActions(bool selected, String routeName) {
    late bool areEditable;

    context.read<QueueDetailsBloc>().state.maybeWhen(
          queueOpened: (_, editable) => areEditable = editable,
          orElse: () => areEditable = false,
        );

    if (routeName == QueueDetailsRoute.name && areEditable) {
      return [
        _AnimatedButton(
          actions: true,
          icon: const Icon(
            Icons.done,
            size: 30,
          ),
          onTap: () {
            if (context
                .read<QueueDetailsBloc>()
                .formKey!
                .currentState!
                .validate()) {
              context
                  .read<EditQueueBloc>()
                  .add(const EditQueueEvent.requestUpdate());
            }
          },
        ),
      ];
    }

    return selected && routeName == TasksRoute.name
        ? [
            _AnimatedButton(
              actions: true,
              icon: const Icon(
                Icons.delete_outline,
                size: 30,
              ),
              onTap: () {
                context
                    .read<SelectTasksBloc>()
                    .add(const SelectTasksEvent.skipAll());
              },
            ),
            _AnimatedButton(
              actions: true,
              icon: const Icon(
                Icons.done,
                size: 30,
              ),
              onTap: () {
                context
                    .read<SelectTasksBloc>()
                    .add(const SelectTasksEvent.setAllDone());
              },
            ),
          ]
        : [
            if (routeName == QueuesRoute.name) const _QrButton(),
            if (routeName == QueueDetailsRoute.name) const _MoreButton(),
          ];
  }

  Widget? _getLeading(bool selected, String routeName) {
    late bool areEditable;

    context.read<QueueDetailsBloc>().state.maybeWhen(
          queueOpened: (_, editable) => areEditable = editable,
          orElse: () => areEditable = false,
        );

    if (routeName == QueueDetailsRoute.name && areEditable) {
      return _AnimatedButton(
        leading: true,
        icon: const Icon(
          Icons.clear,
          size: 30,
        ),
        onTap: () {
          context
              .read<EditQueueBloc>()
              .add(const EditQueueEvent.requestCancel());
        },
      );
    }

    return routeName == QueueDetailsRoute.name ||
            routeName == NotificationSettingsRoute.name ||
            routeName == ThemeSettingsRoute.name ||
            routeName == LanguageSettingsRoute.name
        ? const _BackButton()
        : selected
            ? _AnimatedButton(
                leading: true,
                icon: const Icon(
                  Icons.clear,
                  size: 30,
                ),
                onTap: () {
                  context
                      .read<SelectTasksBloc>()
                      .add(const SelectTasksEvent.clear());
                },
              )
            : null;
  }

  _showToast(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black.withOpacity(0.5),
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }
}
