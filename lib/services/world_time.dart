import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart' as intl;

class WorldTime {
  // -------------------
  // For UI
  String location;
  String? time;
  String flag;
  // -------------------
  String url;
  bool isDaytime = false;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    try {
      Uri uri = Uri.parse('http://worldtimeapi.org/api/timezone/$url');
      http.Response response = await http.get(uri);
      Map data = jsonDecode(response.body);
      String utcOffset = data['utc_offset'].substring(1,3);
      String dateTime = data['datetime'];
      print(dateTime);
      print(utcOffset);

      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(hours: int.parse(utcOffset)));

      isDaytime = now.hour > 6 && now.hour < 20 ? true : false;
      time = intl.DateFormat.jm().format(now);
    } catch(error) {
      print('error: $error');
      time = 'Could not get time data!';
    }
  }
}