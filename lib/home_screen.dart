import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.mode_of_travel),
              title: Text('Mr. Bombastic',
                      style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('La granja',
                        style: TextStyle(color: Colors.amberAccent, fontWeight: FontWeight.bold),
                        ),
              trailing: Icon(Icons.arrow_circle_right),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.fire_extinguisher_outlined),
              title: Text('Mr. Bombastic',
                      style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
              subtitle: Text('U.S.A'),
              trailing: Icon(Icons.fireplace),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.fire_hydrant),
              title: Text('Mr. Bombastic'),
              subtitle: Text('Shhaggy',
                        style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.find_replace_outlined),
            ),

          ],
        ),
      );
  }
}