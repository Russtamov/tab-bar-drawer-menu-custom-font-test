import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home(Key k) : super(key: k);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 25,
        itemExtent: 300,
        itemBuilder: (context, index) {
          return Container(
            padding: EdgeInsets.all(12),
            child: Material(
              elevation: 4,
              borderRadius: BorderRadius.circular(10),
              color: index % 2 == 0
                  ? Colors.teal.shade200
                  : Colors.orangeAccent.shade200,
              child: Center(child: Text(index.toString())),
            ),
          );
        });
  }
}
