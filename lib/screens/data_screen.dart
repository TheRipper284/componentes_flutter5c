import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:practica3_5c/screens/home_screen.dart';
import 'package:practica3_5c/screens/images_screen.dart';
import 'package:practica3_5c/screens/inifite_list_screen.dart';
import 'package:practica3_5c/screens/inputs_screen.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Map<String, dynamic> savedData;

  const DataScreen({Key? key, required this.savedData}) : super(key: key);

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
  List<String> savedDataList = [];
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    widget.savedData.forEach((key, value) {
      savedDataList.add('$key: $value');
    });
  }

  void openScreen(int index) {
    setState(() {
      MaterialPageRoute ruta =
          MaterialPageRoute(builder: (context) => const HomeScreen());

      switch (index) {
        case 0:
          ruta = MaterialPageRoute(builder: (context) => const HomeScreen());
          break;
        case 1:
          ruta = MaterialPageRoute(
              builder: (context) => const InfiniteListScreen());
          break;
        case 2:
          ruta = MaterialPageRoute(builder: (context) => const InputsScreen());
          break;
        case 3:
          ruta = MaterialPageRoute(builder: (context) => const ImagesScreen());
      }

      selectedIndex = index;
      Navigator.push(context, ruta);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Data Screen',
          style: AppTheme.lightTheme.textTheme.bodyMedium,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(  
        currentIndex: selectedIndex,
        backgroundColor: AppTheme.backColor,
        unselectedItemColor: AppTheme.accentColor,
        onTap: openScreen,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: AppTheme.iconColor,
            ),
            label: "Inicio",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list,
              color: AppTheme.iconColor,
            ),
            label: "Lista",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.arrow_circle_right_outlined,
              color: AppTheme.iconColor,
            ),
            label: "Entradas",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.image,
              color: AppTheme.iconColor,
            ),
            label: "Imagenes",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.exit_to_app,
              color: AppTheme.iconColor,
            ),
            label: "Salir",
          ),
        ],
        unselectedLabelStyle: AppTheme.lightTheme.textTheme.bodySmall,
        // Implementación del bottom navigation bar
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              'Datos Guardados',
              style: AppTheme.lightTheme.textTheme.headlineLarge,
            ),
            const SizedBox(height: 10),
            // Mostrar los datos guardados
            ListView.builder(
              shrinkWrap: true,
              itemCount: savedDataList.length,
              itemBuilder: (context, index) { 
                // Separar la clave y el valor para aplicar estilos diferentes
                final keyValue = savedDataList[index].split(': ');
                final key = keyValue[0];
                final value = keyValue[1];
                
                return ListTile(
                  title: RichText(
                    text: TextSpan(
                      style: const TextStyle(
                        color: Color.fromARGB(195, 185, 17, 17), // Color del texto
                        fontSize: 16, // Tamaño de fuente
                        fontWeight: FontWeight.w700, // Peso de la fuente
                      ),
                      children: [
                        TextSpan(
                          text: '$key: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.aclonica().fontFamily,
                            fontSize: 16.5,
                          ),
                        ),
                        TextSpan(
                          text: value,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
