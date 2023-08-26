import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate a network request for a usename
    String username = await Future.delayed(const Duration(seconds: 3), () {
      return 'teleku';
    });

    //simulate a network request to print bio of a user
    String bio = await Future.delayed(const Duration(seconds: 2), () {
      return 'boys of the day, men at night';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        backgroundColor: Colors.green[500],
        title: const Text('Choose your location'),
        centerTitle: true,
      ),
    );
  }
}
