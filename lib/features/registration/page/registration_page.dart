import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:inno_queue/const/appres.dart';
import 'package:inno_queue/core/core.dart';
import 'package:inno_queue/helpers/app_localizations.dart';
import 'package:inno_queue/helpers/text_field_validator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  String name = "";
  bool receivingToken = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          _LoginAsAdmin(),
          Center(
            child: _EnterYourName(),
          ),
        ],
      ),
    );
  }

  void getToken() async {
    receivingToken = true;
    await ApiBaseService.getToken(name: name);
    context.router.replaceNamed('/home');
  }
}

class _LoginAsAdmin extends StatefulWidget {
  const _LoginAsAdmin({Key? key}) : super(key: key);

  @override
  State<_LoginAsAdmin> createState() => _LoginAsAdminState();
}

class _LoginAsAdminState extends State<_LoginAsAdmin> {
  bool receivingToken = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
          minHeight: MediaQuery.of(context).size.height,
        ),
        child: IntrinsicHeight(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: receivingToken
                    ? const SpinKitThreeBounce(
                        size: 20,
                        color: Colors.grey,
                      )
                    : TextButton(
                        child: Text(
                          AppLocalizations.of(context)!
                                  .translate('or log in as admin') ??
                              "",
                          style: const TextStyle(fontSize: 17),
                        ),
                        onPressed: () {
                          setState(() {
                            getToken();
                          });
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void getToken() async {
    receivingToken = true;
    await ApiBaseService.getToken(name: 'admin');
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstLaunch', false);
    context.router.replaceNamed('/home');
  }
}

class _EnterYourName extends StatefulWidget {
  const _EnterYourName({
    Key? key,
  }) : super(key: key);

  @override
  State<_EnterYourName> createState() => _EnterYourNameState();
}

class _EnterYourNameState extends State<_EnterYourName> {
  String name = "";
  bool receivingToken = false;
  final GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${AppLocalizations.of(context)!.translate('enter your name') ?? ""}:',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.75,
            child: TextFormField(
              textAlign: TextAlign.center,
              onChanged: (value) {
                setState(() {
                  name = value;
                });
              },
              cursorColor: Colors.grey,
              decoration: AppRes.inputDecoration,
              validator: TextFieldValidator.validate,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: AnimatedOpacity(
              opacity: name == "" ? 0 : 1,
              duration: const Duration(milliseconds: 250),
              child: receivingToken
                  ? const SpinKitThreeBounce(
                      size: 20,
                      color: Colors.grey,
                    )
                  : TextButton(
                      child: const Text('Submit'),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          FocusScope.of(context).unfocus();
                          getToken();
                        }
                      },
                    ),
            ),
          ),
        ],
      ),
    );
  }

  void getToken() async {
    receivingToken = true;
    await ApiBaseService.getToken(name: name);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstLaunch', false);
    context.router.replaceNamed('/home');
  }
}
