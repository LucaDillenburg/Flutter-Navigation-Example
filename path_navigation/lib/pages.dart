import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Home',
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(DateTime.now().toString(), style: TextStyle(fontSize: 25)),
            TextButton(
              child: Text('Subpage'),
              onPressed: () => Navigator.of(context).pushNamed('/subpage'),
            ),
          ],
        ),
      ),
    );
  }
}

class Subpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Subpage', style: TextStyle(fontSize: 25)),
            Text(DateTime.now().toString(), style: TextStyle(fontSize: 25)),
          ],
        ),
      ),
    );
  }
}
