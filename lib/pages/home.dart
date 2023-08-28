import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data =
        (ModalRoute.of(context)?.settings.arguments as Map<dynamic, dynamic>?)!;
    print(data);

    //set background
    late String bgImg = data['isDayTime'] ? 'day.jpg' : 'night.jpeg';

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 300.0, 0.0, 0.0),
              child: Column(
                children: <Widget>[
                  TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(
                      Icons.edit_location,
                      color: Colors.grey[100],
                    ),
                    label: Text(
                      'Edit Location',
                      style: TextStyle(color: Colors.grey[100]),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: const TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 66.0,
                      color: Colors.grey[100],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
