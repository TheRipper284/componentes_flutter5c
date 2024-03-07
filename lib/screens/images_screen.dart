import 'package:flutter/material.dart';
import 'package:practica3_5c/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

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