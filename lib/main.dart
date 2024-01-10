import 'package:flutter/material.dart';

import 'show_me_counter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anonymous Route',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return ShowMeCounter();
                  }),
                );
              },
              child: Text(
                'Show Me Counter',
                style: TextStyle(fontSize: 20.0),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Increment Counter',
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
