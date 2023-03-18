import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String? location; //location name for the UI
  String? time; // the time in that location
  String? url; //locaiton url for api endpoint
  WorldTime({this.location, this.url});

  Future<void> getTime() async {

    try {
      //make the request
      Response response = await get(Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
      Map data = jsonDecode(response.body);

      //get properties from the data
      String datetime =data['datetime'].substring(0,25);
      //print(datetime);
      //print(offset);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      //set the time property
      time = DateFormat.jm().format(now);
    }catch(e){
      print('ERROR : $e');
      time = 'Could not get time data';
    }
  }
}