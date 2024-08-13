import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'carrusel perez',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CarouselDemo(),
    );
  }
}

class CarouselDemo extends StatelessWidget {
  final List<String> imageList = [
    "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula1.png",
    "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula2.png",
    "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula3.png",
    "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula4.png",
    "https://raw.githubusercontent.com/hiram1028/p6carruselPerez/main/peliculas/pelicula5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carrusel peliculas perez'),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider(
          items: imageList.map((imgUrl) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                  ),
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
          options: CarouselOptions(
            height: 300.0,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
          ),
        ),
      ),
    );
  }
}
