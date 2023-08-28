import 'package:flutter/material.dart';
import 'package:world_timer/services/world_timer.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTimer> locations = [
    WorldTimer(url: 'Europe/London', location: 'London', flag: 'uk.png'),
    WorldTimer(url: 'Europe/Athens', location: 'Athens', flag: 'greece.png'),
    WorldTimer(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTimer(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTimer(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
    WorldTimer(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
    WorldTimer(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTimer(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: const Text('Choose your location'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Card();
        },
      ),
    );
  }
}
