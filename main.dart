import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'My Profile',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: Colors.grey[900],
        ),
        body: Container(
          color: Colors.white10,
          child: ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.grey[300],
              ),
              const SizedBox(height: 10.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Sushant Soni',
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'youremail@example.com',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                    ),
                  ),
                  Text(
                    'City, Country',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.grey[800],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 100.0),
              for (int i = 0; i < 4; i++)
                Container(
                  margin: const EdgeInsets.only(bottom: 20.0),
                  padding: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 147, 147, 147),
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      for (int j = 1; j <= 4; j++)
                        Text(
                          'Data $j',
                          style: const TextStyle(
                            fontSize: 16.0,
                            color: Colors.black,
                          ),
                        ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
