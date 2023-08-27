import 'package:flutter/material.dart';
import 'package:world_timer/services/world_timer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void setupWorldTimer() async {
    WorldTimer instance = WorldTimer(
        location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time
    });
  }

  @override
  void initState() {
    super.initState();
    setupWorldTimer();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(),
    );
  }
}
