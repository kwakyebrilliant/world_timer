import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    //simulate a network request for a usename
    await Future.delayed(const Duration(seconds: 3), () {
      print('teleku');
    });

    //simulate a network request to print bio of a user
    Future.delayed(const Duration(seconds: 3), () {
      print('boys of the day, men at night');
    });

    print('you are here');
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
