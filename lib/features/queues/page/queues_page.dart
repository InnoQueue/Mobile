import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inno_queue/core/widget/app_button.dart';
import '../widgets/widgets.dart';

class QueuesPage extends StatefulWidget {
  const QueuesPage({Key? key}) : super(key: key);

  @override
  State<QueuesPage> createState() => _QueuesPageState();
}

class _QueuesPageState extends State<QueuesPage> {
  int? _groupValue = 0;
  late Map<int, Widget> _tabs;

  @override
  void initState() {
    super.initState();

    _tabs = const {
      0: Text("Active"),
      1: Text("Frozen"),
    };
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
        child: Column(
          children: [
            AppButton(
              text: 'test',
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  builder: (BuildContext context) {
                    return Container(
                      height: 200,
                      color: Colors.amber,
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const Text('Modal BottomSheet'),
                            ElevatedButton(
                              child: const Text('Close BottomSheet'),
                              onPressed: () => Navigator.pop(context),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              child: CupertinoSlidingSegmentedControl<int>(
                groupValue: _groupValue,
                children: _tabs,
                onValueChanged: (value) {
                  setState(() {
                    _groupValue = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: QueueList(keyWord: _groupValue == 0 ? 'Active' : 'Frozen'),
            )
          ],
        ),
      ),
    );
  }
}
