import 'package:flutter/material.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/inifite_list_screen.dart';
import 'package:practica3_5c/screens/notifications_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
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
              MaterialPageRoute(builder: (context) => const InfiniteListScreen());
                  break;
          case 2: 
            ruta = MaterialPageRoute(builder: (context) => const NotificationsScreen());
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
        title: const Text('Entradas'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaTexto(),
            entradaSwitch(),
            entradaSlider(),
            entradasRadio(),
            Text(
              'Qué esuas para correr tus app de Flutter?',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
            const ElevatedButton(
              onPressed: null,
              child: Text(
                'Guardar',
              ),
            ),
          ],
        ),
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
              Icons.list, 
              color: AppTheme.primaryColor,
            ),
            label: "Lista",
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

  TextField entradaTexto() {
    return TextField(
      style: AppTheme.lightTheme.textTheme.headlineMedium,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        labelText: 'Nombre',
        labelStyle: AppTheme.lightTheme.textTheme.headlineLarge,
      ),
    );
  }

  Row entradaSwitch() {
    return Row(
      children: <Widget>[
        const FlutterLogo(),
        Text(
          '¿Te gusta flutter?',
          style: AppTheme.lightTheme.textTheme.headlineLarge,
        ),
        const SizedBox(
          width: 25.0,
        ),
        Switch(
          value: valueSwitch,
          onChanged: (value) {
            setState(() {
              valueSwitch = value;
              //print('Estado Switch: $valueSwitch');
            });
          },
        )
      ],
    );
  }

  Column entradaSlider() {
    return Column(
      children: [
        Text('¿Cuanto te gusta flutter?',
            style: AppTheme.lightTheme.textTheme.headlineLarge),
        Slider(
            min: 0.0,
            max: 10.0,
            value: valueSlider,
            activeColor: AppTheme.primaryColor,
            inactiveColor: AppTheme.accentColor,
            thumbColor: AppTheme.primaryColor,
            divisions: 10,
            label: '${valueSlider.round()}',
            onChanged: (value) {
              setState(() {
                valueSlider = value;
                //print('Valor Sider: $valueSlider');
              });
            })
      ],
    );
  }

  Column entradasRadio(){
    return Column(
      children: [
        Text("¿Que prefieres usar para desarrollo movil?", 
        style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        ListTile(
          title: Text(
            'Kotlin',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 1,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value!;
                  print('opcion selecionada: $selectedRadioOption');
                });
              },
            ),
          )
        ),
        ListTile(
          title: Text(
            'Flutter',
            style: AppTheme.lightTheme.textTheme.headlineMedium,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 2,
              groupValue: selectedRadioOption,
              onChanged: (value) {
                setState(() {
                  selectedRadioOption = value!;
                  print('Opcion Selecionada: $selectedRadioOption');
                });
              },
            ),
          )
        )
      ],
    );        
  }

  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Navegador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked1, 
          onChanged: (value){
            setState(() {
              isChecked1 = value!;
              print('Valor de Navegador: $isChecked1');
            });
          }
        ),

        Text(
          'Emulador',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked2, 
          onChanged: (value){
            setState(() {
              isChecked2 = value!;
              print('Valor de Emulador: $isChecked2');
            });
          }
        ),

        Text(
          'Smartphone',
          style: AppTheme.lightTheme.textTheme.headlineMedium,
        ),
        Checkbox(
          value: isChecked3, 
          onChanged: (value){
            setState(() {
              isChecked3 = value!;
              print('Valor de Smartphone: $isChecked3');
            });
          }
        ),
      ]
    );
  }

}