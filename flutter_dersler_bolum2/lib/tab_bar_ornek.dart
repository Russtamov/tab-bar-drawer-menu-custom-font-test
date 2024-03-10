import 'package:flutter/material.dart';

class TabBarOrnek extends StatefulWidget {
  const TabBarOrnek({super.key});

  @override
  State<TabBarOrnek> createState() => _TabBarOrnekState();
}

class _TabBarOrnekState extends State<TabBarOrnek>
    with SingleTickerProviderStateMixin {
  late TabController tabControllerim;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabControllerim = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tab Bar Example'), bottom: tabBarim()),
      bottomNavigationBar:
          tabBarim(), // yukarıdaki tabbar ile aynı tipte olmalı

      body: TabBarView(controller: tabControllerim, children: [
        Container(
            color: Colors.teal.shade300,
            width: double.infinity,
            height: 300,
            child: const Center(
                child: Text(' Tab Bar Example 1',
                    style: TextStyle(fontFamily: 'Elyazisi', fontSize: 24)))),
        Container(
            color: Colors.blue.shade300,
            width: double.infinity,
            height: 300,
            child: const Center(
                child: Text(' Tab Bar Example 2',
                    style: TextStyle(fontFamily: 'Elyazisi', fontSize: 24)))),
        Container(
            color: Colors.lightGreenAccent,
            width: double.infinity,
            height: 300,
            child: const Center(
                child: Text(' Tab Bar Example 3',
                    style: TextStyle(fontFamily: 'Elyazisi', fontSize: 24))))
      ]),
    );
  }

  TabBar tabBarim() {
    return TabBar(controller: tabControllerim, tabs: [
      Tab(
        icon: Icon(Icons.key),
        text: 'Key ',
      ),
      Tab(
        icon: Icon(Icons.man),
        text: 'Human ',
      ),
      Tab(
        icon: Icon(Icons.money),
        text: 'Money ',
      ),
    ]);
  }
}
