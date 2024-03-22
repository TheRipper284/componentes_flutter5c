import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/inifite_list_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class NotificationsScreen extends StatefulWidget {
  const NotificationsScreen({super.key});

  @override
  State<NotificationsScreen> createState() => _NotificationsScreen();
}

class _NotificationsScreen extends State<NotificationsScreen> {
  bool valueSwitch = false;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  double valueSlider = 0.0;
  int selectedIndex = 0;
  int selectedRadioOption = 0;

  openScreen(int index){

    setState(() {
        MaterialPageRoute ruta =
                MaterialPageRoute(builder: (context) => const HomeScreen());
        switch ( index ){ 
          case 0: 
            ruta = 
              MaterialPageRoute(builder: (context) => const HomeScreen());
                  break;
          case 1: 
            ruta = 
              MaterialPageRoute(builder: (context) => const InputsScreen());
                  break;
          case 2: 
            ruta = MaterialPageRoute(builder: (context) => const InfiniteListScreen());
                  break;
          case 3: 
            ruta = 
              MaterialPageRoute(builder: (context) => const ImagesScreen());
            break;
        }      
      selectedIndex = index;
      //print('SelectedIndex = $selectedIndex');  
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notificaciones'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.primaryColor,
        unselectedItemColor: AppTheme.backColor,
        onTap: (index) => openScreen(index),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home, 
              color: AppTheme.primaryColor,
            ),
            label: "Inicio", 
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.input_sharp, 
              color: AppTheme.primaryColor,
            ),
            label: "Entradas",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list, 
              color: AppTheme.primaryColor,
            ),
            label: "Lista",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image, 
              color: AppTheme.primaryColor,
            ),
            label: "Imágenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app, 
              color: AppTheme.primaryColor,
            ),
            label: "Salir",
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodySmall ,
      ),
    );
  }
}