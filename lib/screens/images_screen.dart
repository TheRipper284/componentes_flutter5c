import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/inifite_list_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/screens/notifications_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
            ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
                  break;
          case 3: 
            ruta = 
              MaterialPageRoute(builder: (context) => const InfiniteListScreen());
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
        title: Text(
          'Imágenes',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        )
      ),
      body: ListView(
        children: [
          imageCard(),
          imageWeb(),
        ],
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
              Icons.notification_add, 
              color: AppTheme.primaryColor,
            ),
            label: "Notificaciones",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image, 
              color: AppTheme.primaryColor,
            ),
            label: "Lista",
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

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(20),
      elevation: 10,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
          children: [
            const Image(
              image: AssetImage('far_cry.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text('Invación a Tribu Enemiga',
                                  style: AppTheme.lightTheme.textTheme.headlineLarge)
            ),
          ],
        ),
      )
    );
  }

  Widget imageWeb(){
    return Stack(
      children: <Widget>[
        const Center(
            child: CircularProgressIndicator(),
        ),
        Center(
          child: SizedBox(
            height: 460,
            width: 460,
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage, 
              image: 'https://cdn.cloudflare.steamstatic.com/steam/apps/708770/ss_a2295c12f7e8058ad70516e9ae8eee24467568aa.1920x1080.jpg?t=1620974912',
            ), 
          ),
        ),
      ]
    );
  }

}








            //indica imagen de lugar web
            // Image.network(
            //   ),