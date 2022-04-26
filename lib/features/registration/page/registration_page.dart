import 'package:auto_route/src/router/auto_router_x.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/core/api/api_settings.dart';
import 'package:inno_queue/core/core.dart';

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
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Center(
                child: Text(
              'Enter your name:',
              style: TextStyle(
                fontSize: 20,
              ),
            )),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.75,
              child: TextField(
                textAlign: TextAlign.center,
                onChanged: (value) {
                  setState(() {
                    name = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: AnimatedOpacity(
                opacity: name == "" ? 0 : 1,
                duration: const Duration(milliseconds: 250),
                child: TextButton(
                  child: const Text('Submit'),
                  onPressed: () {
                    if (name != "") {
                      FocusScope.of(context).unfocus();
                      getToken();
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getToken() async {
    receivingToken = true;
    await ApiBaseService.getToken(name: name);
    context.router.replaceNamed('/home');
  }
}
