import 'package:flutter/material.dart';
import 'package:madz_time/services/world_time.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(url: 'Asia/Kolkata',location: 'India'),
    WorldTime(url: 'Asia/Dubai',location: 'UAE'),
    WorldTime(url: 'Asia/Riyadh',location: 'Saudi Arabia'),
    WorldTime(url: 'America/New_York', location: 'USA'),
    WorldTime(url: 'Europe/London', location: 'UK'),
    WorldTime(url: 'Asia/Qatar',location: 'Qatar'),
    WorldTime(url: 'Europe/Paris',location: 'France'),
    WorldTime(url: 'Asia/Seoul', location: 'South Korea'),
    WorldTime(url: 'Asia/Hong_Kong',location: 'China'),
    WorldTime(url: 'Asia/Tokyo',location: 'Japan'),
    WorldTime(url: 'Europe/Berlin',location: 'Germany'),
    WorldTime(url: 'Asia/Karachi',location: 'Pakistan'),
    WorldTime(url: 'Asia/Kabul',location: 'Afghanistan'),
    WorldTime(url: 'Europe/Moscow',location: 'Europe/Moscow'),
    WorldTime(url: 'America/Brazil/Manaus',location: 'America/Brazil/Manaus'),
    WorldTime(url: 'Europe/Athens', location: 'Greece'),
    WorldTime(url: 'Africa/Cairo', location: 'Africa/Cairo'),
    WorldTime(url: 'Africa/Nairobi', location: 'Africa/Nairobi'),
    WorldTime(url: 'America/Chicago', location: 'America/Chicago'),
    WorldTime(url: 'Asia/Jakarta', location: 'Asia/Jakarta'),
    WorldTime(url: 'America/Bogota',location: 'America/Bogota'),
    WorldTime(url: 'America/Chicago',location: 'America/Chicago'),
    WorldTime(url: 'America/Denver',location: 'America/Denver'),
    WorldTime(url: 'America/El_Salvador',location: 'America/El_Salvador'),
    WorldTime(url: 'America/Havana',location: 'America/Havana'),
    WorldTime(url: 'America/Indiana/Petersburg',location: 'America/Indiana/Petersburg'),
    WorldTime(url: 'America/Jamaica',location: 'America/Jamaica'),
    WorldTime(url: 'America/Juneau',location: 'America/Juneau'),
    WorldTime(url: 'America/Los_Angeles',location: 'America/Los_Angeles'),
    WorldTime(url: 'America/Mexico_City',location: 'America/Mexico_City'),
    WorldTime(url: 'America/North_Dakota/New_Salem',location: 'America/North_Dakota/New_Salem'),
    WorldTime(url: 'America/Panama',location: 'America/Panama'),
    WorldTime(url: 'America/Phoenix',location: 'America/Phoenix'),
    WorldTime(url: 'America/Puerto_Rico',location: 'America/Puerto_Rico'),
    WorldTime(url: 'America/Santiago',location: 'America/Santiago'),
    WorldTime(url: 'Asia/Baghdad',location: 'Asia/Baghdad'),
    WorldTime(url: 'Asia/Bangkok',location: 'Asia/Bangkok'),
    WorldTime(url: 'Asia/Brunei',location: 'Asia/Brunei'),
    WorldTime(url: 'Asia/Colombo',location: 'Asia/Colombo'),
    WorldTime(url: 'Asia/Damascus',location: 'Asia/Damascus'),
    WorldTime(url: 'Asia/Dhaka',location: 'Asia/Dhaka'),
    WorldTime(url: 'Asia/Jerusalem',location: 'Asia/Jerusalem'),
    WorldTime(url: 'Asia/Kathmandu',location: 'Asia/Kathmandu'),
    WorldTime(url: 'Asia/Macau',location: 'Asia/Macau'),
    WorldTime(url: 'Asia/Shanghai',location: 'Asia/Shanghai'),
    WorldTime(url: 'Asia/Manila',location: 'Asia/Manila'),
    WorldTime(url: 'Asia/Singapore',location: 'Asia/Singapore'),
    WorldTime(url: 'Atlantic/Bermuda',location: 'Atlantic/Bermuda'),
    WorldTime(url: 'Atlantic/South_Georgia',location: 'Atlantic/South_Georgia'),
    WorldTime(url: 'Europe/Budapest',location: 'Europe/Budapest'),
    WorldTime(url: 'Europe/Helsinki',location: 'Europe/Helsinki'),
    WorldTime(url: 'Europe/Istanbul',location: 'Europe/Istanbul'),
    WorldTime(url: 'Europe/Lisbon',location: 'Europe/Lisbon'),
    WorldTime(url: 'Europe/Luxembourg',location: 'Europe/Luxembourg'),
    WorldTime(url: 'Europe/Madrid',location: 'Europe/Madrid'),
    WorldTime(url: 'Europe/Malta',location: 'Europe/Malta'),
    WorldTime(url: 'Europe/Monaco',location: 'Europe/Monaco'),
    WorldTime(url: 'Europe/Oslo',location: 'Europe/Oslo'),
    WorldTime(url: 'Europe/Rome',location: 'Europe/Rome'),
    WorldTime(url: 'Europe/Vienna',location: 'Europe/Vienna'),
    WorldTime(url: 'Pacific/Fiji',location: 'Pacific/Fiji'),
    WorldTime(url: 'Pacific/Tahiti',location: 'Pacific/Tahiti'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();
    //navigate to homescreen
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        backgroundColor: Colors.grey[800],
        title: Text(""
            "Locations",
          style: TextStyle(
            color: Colors.amber,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                tileColor: Colors.black,
                onTap: () {
                  updateTime(index);
                },
                title: Text(
                    locations[index].location!,
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              )
            ),
          );
        }
      ),
    );
  }
}
