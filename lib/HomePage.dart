import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      'assets/img1.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
      'assets/img1.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
      'assets/img1.jpg',
      'assets/img2.jpg',
      'assets/img3.jpg',
      'assets/img1.jpg',
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gallary',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        foregroundColor: Colors.grey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(images[index]), fit: BoxFit.cover),
              ),
            );
          },
        ),
      ),
    );
  }
}
