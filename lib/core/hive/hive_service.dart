import 'package:hive/hive.dart';

class HiveService {
  static exists({required String boxName}) async {
    final openBox = await Hive.openBox(boxName);
    int length = openBox.length;
    return length != 0;
  }

  static addBoxes(List items, String boxName) async {
    final openBox = await Hive.openBox(boxName);
    for (var item in items) {
      openBox.add(item);
    }
  }

  static Future<List> getBoxes(String boxName) async {
    List boxList = [];

    final openBox = await Hive.openBox(boxName);
    int length = openBox.length;

    for (int i = 0; i < length; i++) {
      boxList.add(openBox.getAt(i));
    }
    return boxList;
  }
}
