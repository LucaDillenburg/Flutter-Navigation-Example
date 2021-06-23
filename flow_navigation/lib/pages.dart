import 'package:flow_navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flow_builder/flow_builder.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

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
              onPressed: () => context
                  .flow<AppFlowData>()
                  .update((data) => data.copyWith(subpage: true)),
            ),
          ],
        ),
      ),
    );
  }
}

class Subpage extends StatelessWidget {
  Subpage({Key? key}) : super(key: key);

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
