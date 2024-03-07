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
          imageWeb(),
        ],
      )
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
    return Center(
      child: Image.network(
        'https://i0.wp.com/imgs.hipertextual.com/wp-content/uploads/2018/09/adventure-time-poster.jpg?fit=1000%2C638&quality=50&strip=all&ssl=1'
      ),
    );
  }

}

// titulo del git commit Images2