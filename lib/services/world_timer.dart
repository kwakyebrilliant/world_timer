import 'package:http/http.dart' as http;
import 'dart:convert';

class WoldTimer {
  late String location; //location name for UI
  late String time; //the time in that location
  late String flag; //url to asset flag icon
  late String url; //location url

  void getTime() async {
    //make a request
    final response =
        await http.get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['datetime'];
    String utc_offset = data['utc_offset'].substring(1, 3);
    //print(datetime);
    //print(utc_offset);

    //create datetime object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(utc_offset)));

    //set the time property
    time = now.toString();
  }
}
