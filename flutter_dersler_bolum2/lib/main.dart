import 'package:flutter/material.dart';
import 'package:flutter_dersler_bolum2/home.dart';
import 'package:flutter_dersler_bolum2/drawer_menu.dart';
import 'package:flutter_dersler_bolum2/mearsoft.dart';
import 'package:flutter_dersler_bolum2/studentPage.dart';
import 'package:flutter_dersler_bolum2/tab_bar_ornek.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Font',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyhomePage(),
    );
  }
}

class MyhomePage extends StatefulWidget {
  const MyhomePage({super.key});

  @override
  State<MyhomePage> createState() => _MyhomePageState();
}

class _MyhomePageState extends State<MyhomePage> {
  int secilenMenuItem = 2;
  late List<Widget> tumsayfalar;
  late StudentPage sayfaStudent;
  late Home sayfaHome;
  late MearSoftTest sayfaMearSoft;
  var keyHome = PageStorageKey('key_Home');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sayfaHome = Home(keyHome); // Home sınıfının bir örneğini oluşturun
    sayfaStudent =
        StudentPage(); // StudentPage sınıfının bir örneğini oluşturun

    sayfaMearSoft = MearSoftTest();

    tumsayfalar = [sayfaHome, sayfaStudent, sayfaMearSoft];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DraverMenu(),
      appBar: AppBar(
        title: Text('Custom Fonts Test'),
      ),
      body: tumsayfalar[secilenMenuItem],
      bottomNavigationBar: bottomNavigation(),
    );
  }

  BottomNavigationBar bottomNavigation() {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.lightBlueAccent),
        BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Student',
            backgroundColor: Colors.green),
        BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Bussines',
            backgroundColor: Colors.purple)
      ],
      type: BottomNavigationBarType.shifting,
      currentIndex: secilenMenuItem,
      onTap: (index) {
        setState(() {
          secilenMenuItem = index;
          if (index == 1) {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (contex) => TabBarOrnek()));
          }
        });
      },
    );
  }
}
