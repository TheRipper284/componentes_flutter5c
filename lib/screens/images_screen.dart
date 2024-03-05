import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
}

class _ImagesScreenState extends State<ImagesScreen> {
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
          
          SizedBox(
            height: 300,
            width: 350,
            child: Image(
              image: AssetImage('bioshok.webp')
            ),
          ),
        ],
      )
    );
  }

  Card imageCard(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child:const Image(
          image: AssetImage('far_cry.jpg')
        ),
    );
  }
}