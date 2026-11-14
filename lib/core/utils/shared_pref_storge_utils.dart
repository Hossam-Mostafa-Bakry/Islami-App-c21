import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefStorgeUtils {
  static const String _key = "mostRecentlyList";
  static const int _maxRecentlySura = 5;

  static Future<void> addSura(String suraNumber) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final recent = prefs.getStringList(_key) ?? [];

    // case there are stored list
    recent.remove(suraNumber);
    recent.insert(0, suraNumber);

    final trimmed = recent.take(_maxRecentlySura).toList();
    await prefs.setStringList(_key, trimmed);
  }

 static Future<List<String>> getRecentlyList() async {

    final prefs = await SharedPreferences.getInstance();

    return  prefs.getStringList(_key) ?? <String>[];
  }
}
