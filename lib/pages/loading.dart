import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
    return const Scaffold(
      body: Text('loading'),
    );
  }
}
