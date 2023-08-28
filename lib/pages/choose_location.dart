import 'package:flutter/material.dart';
import 'package:world_timer/services/world_timer.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTimer> locations = [
    WorldTimer(url: 'Africa/Accra', location: 'Accra', flag: 'ghana.png'),
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
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: const Text('Choose your location'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0.0, 15.0, 0.0, 0.0),
        child: ListView.builder(
          itemCount: locations.length,
          itemBuilder: (context, index) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
              child: Card(
                child: ListTile(
                  onTap: () {
                    print(locations[index].location);
                  },
                  title: Text(locations[index].location),
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/${locations[index].flag}'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
