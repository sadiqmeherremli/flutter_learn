import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        backgroundColor: Colors.transparent,
        title: Text("app"),
      ),
        body: SingleChildScrollView(
          child: Column(
                children: [
                 PngImage(name: ImageItems().instagramLogoPath),
                  PngImage(name: ImageItems().instagramLogoPath),
                   PngImage(name: ImageItems().instagramLogoPath),
          
          Image.network(
            'to/painting-mountain-lake-with-mountain-background_188544-9126.jpg',
            width: 200,
            height: 200,
            errorBuilder: (context, error, stackTrace) =>
                Image.asset("assets/image_not_found.png"),
          )
                ],
              ),
        ));
  }
}

class ImageItems {
  final String instagramLogoPath = 'instagram_logo';
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/$name.png',
      fit: BoxFit.contain,
      width: 300,
      height: 400,
    );
  }
}
