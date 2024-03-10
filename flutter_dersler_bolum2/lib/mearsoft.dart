import 'package:flutter/material.dart';

class MearSoftTest extends StatefulWidget {
  const MearSoftTest({super.key});

  @override
  State<MearSoftTest> createState() => _MearSoftTestState();
}

class _MearSoftTestState extends State<MearSoftTest> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView(
            scrollDirection: Axis.horizontal,
            reverse: false,
            pageSnapping: true,
            onPageChanged: (index) {
              debugPrint('Mear Soft gelen index  $index ');
            },
            children: [
              Container(
                  color: Color.fromARGB(255, 241, 72, 72),
                  width: double.infinity,
                  height: 300,
                  child: Center(child: Text(' MearSoft 1'))),
              Container(
                  color: Colors.blue.shade50,
                  width: double.infinity,
                  height: 300,
                  child: Center(child: Text(' MearSoft 2'))),
              Container(
                  color: Colors.indigo.shade300,
                  width: double.infinity,
                  height: 300,
                  child: Center(child: Text(' MearSoft3')))
            ],
          ),
        ),
        Container(
            color: Colors.teal.shade300,
            width: double.infinity,
            height: 300,
            child: Center(child: Text(' MearSoft1')))
      ],
    );
  }
}
