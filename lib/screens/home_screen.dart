import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/inifite_list_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/screens/notifications_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de flutter'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.input_sharp,
              ),
            ),
            title: Text(
              'Entradas',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Diferentes widgets para entradas de flutter',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_circle_right,
              color: AppTheme.primaryColor,
            ),
            onTap: (){
              final ruta1 = MaterialPageRoute(builder: (context){
                return const InputsScreen();
              });
              Navigator.push(context, ruta1);
            }
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.list_alt_rounded),
            ),
            title: Text(
              'ListView.builder',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Scroll infinito',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_circle_right,
              color: AppTheme.primaryColor,
            ),
            onTap: (){
              final ruta2 = MaterialPageRoute(builder: (context){
                return const InfiniteListScreen();
              });
              Navigator.push(context, ruta2);
            }
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.notification_add),
            ),
            title: Text(
              'Notificaciones',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Creacion de notificaciones',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: const Icon(
              Icons.arrow_circle_right,
              color: AppTheme.primaryColor,
            ),
            onTap: (){
              final ruta3 = MaterialPageRoute(builder: (context){
                return const NotificationsScreen();
              });
              Navigator.push(context, ruta3);
            }
          ),
          const Divider(),
          ListTile(
            leading: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(Icons.image),
            ),
            title: Text(
              'Imágenes',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            subtitle: Text(
              'Manejo de Imágenes',
              style: AppTheme.lightTheme.textTheme.bodySmall,
            ),
            trailing: IconTheme(
              data: AppTheme.lightTheme.iconTheme,
              child: const Icon(
                Icons.arrow_circle_right, 
                color: AppTheme.primaryColor,
              ),
            ),
            onTap: (){
              final ruta4 = MaterialPageRoute(builder: (context){
                return const ImagesScreen();
              });
              Navigator.push(context, ruta4);
            }
          ),
        ],
      ),
    );
  }
}