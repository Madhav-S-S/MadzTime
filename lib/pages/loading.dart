import 'package:flutter/material.dart';
import 'package:madz_time/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

void setupWorldTime() async{
  WorldTime instance = WorldTime(location: 'India',url: 'Asia/Kolkata');
  await instance.getTime();
  Navigator.pushReplacementNamed(context, '/home', arguments: {
    'location': instance.location,
    'time': instance.time,
  });
}

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
              'images/M logo.png',
            width: 200,
            height: 200,
          ),
          Text(
              'MadzTime',
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          SpinKitWave(
            color: Colors.amberAccent,
            size: 60.0,
          ),
        ]
      ),
    );
  }
}
