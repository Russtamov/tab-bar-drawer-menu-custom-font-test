import 'package:flutter/material.dart';

class DraverMenu extends StatelessWidget {
  const DraverMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Muahammed Osman'),
            accountEmail: const Text('mahammadcanr@gmail.com'),
            currentAccountPicture: Image.network(
              'https://www.log.com.tr/wp-content/uploads/2019/12/netflix-the-witcher.jpg',
              fit: BoxFit.cover,
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('AK'),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                child: Text('MO'),
              )
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                InkWell(
                  onTap: () {},
                  splashColor: Colors.blue,
                  child: ListTile(
                    leading: Icon(Icons.call),
                    title: Text('Muhammed Osman'),
                    trailing: Icon(Icons.navigation),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Abdullah Kara'),
                  trailing: Icon(Icons.navigation),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Mertacan Bora '),
                  trailing: Icon(Icons.navigation),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Emre Yildiz  '),
                  trailing: Icon(Icons.navigation),
                ),
                Divider(
                  height: 15,
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Abdullah Kara '),
                  trailing: Icon(Icons.navigation),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Muahammed Osman  '),
                  trailing: Icon(Icons.navigation),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Mertcan Bora '),
                  trailing: Icon(Icons.navigation),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Emre Yildiz  '),
                  trailing: Icon(Icons.navigation),
                ),
                Divider(
                  height: 15,
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Emre Yildiz  '),
                  trailing: Icon(Icons.navigation),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Emre Yildiz  '),
                  trailing: Icon(Icons.navigation),
                ),
                ListTile(
                  leading: Icon(Icons.call),
                  title: Text('Emre Yildiz  '),
                  trailing: Icon(Icons.navigation),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}




    /* const ListTile(
              leading: Icon(Icons.call),
              title: Text('Muhammed Osman'),
              trailing: Icon(Icons.navigation),
            ),
            const ListTile(
              leading: Icon(Icons.call),
              title: Text('Abdullah Kara'),
              trailing: Icon(Icons.navigation),
            ),
            const ListTile(
              leading: Icon(Icons.call),
              title: Text('Mertacan Bora '),
              trailing: Icon(Icons.navigation),
            ),
            const ListTile(
              leading: Icon(Icons.call),
              title: Text('Emre Yildiz  '),
              trailing: Icon(Icons.navigation),
            ),
            Divider(
              thickness: BorderSide.strokeAlignCenter,
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Apdullah Kara '),
              trailing: Icon(Icons.navigation),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Muahammed Osman  '),
              trailing: Icon(Icons.navigation),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Mertcan Bora '),
              trailing: Icon(Icons.navigation),
            ),
            const ListTile(
              leading: Icon(Icons.home),
              title: Text('Emre Yildiz  '),
              trailing: Icon(Icons.navigation),
            ),  const ListTile(
              leading: Icon(Icons.call),
              title: Text('Emre Yildiz  '),
              trailing: Icon(Icons.navigation),
            ),  const ListTile(
              leading: Icon(Icons.call),
              title: Text('Emre Yildiz  '),
              trailing: Icon(Icons.navigation),
            ),  const ListTile(
              leading: Icon(Icons.call),
              title: Text('Emre Yildiz  '),
              trailing: Icon(Icons.navigation),
            ),*/