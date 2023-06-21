import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: const EdgeInsets.all(0),
        children: [
          const DrawerHeader(
            child: Center(
              child: Text(
                'Mork',
                style: TextStyle(fontSize: 30),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
          ),
          ListTile(
            leading: Icon(Icons.person_3_sharp),
            title: Text('Mohammad Mahdi'),
            subtitle: Text('Developer'),
          ),
          ListTile(
            leading: Icon(Icons.email_rounded),
            title: Text('Email'),
            subtitle: Text('mahdyrahimy212@gmail.com'),
          ),
          ListTile(
            leading: Icon(Icons.telegram_sharp),
            title: Text('Telegram'),
            subtitle: Text('Mahdi909'),
          ),
        ],
      ),
    );
  }
}
