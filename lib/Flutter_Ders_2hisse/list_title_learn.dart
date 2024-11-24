import 'package:flutter/material.dart';

class ListTitleLearn extends StatelessWidget {
  const ListTitleLearn({super.key});
  final imageUrl = "https://en.wikipedia.org/wiki/Image";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: SingleChildScrollView(
        child: const Column(children: [
          CustomListTitle(
            subTitle: 'subtitle1',
            imageName: 'instagram_logo',
            icon: Icon(Icons.add),
            imageHeight: 160,
          ),
          CustomListTitle(
              subTitle: "subtitlle2",
              imageName: "instagram_logo",
              icon: Icon(Icons.people_alt_rounded),
              imageHeight: 100,)
        ]),
      ),
    );
  }
}


class CustomListTitle extends StatelessWidget {
  const CustomListTitle({
    super.key,
    required this.subTitle,
    required this.imageName,
    required this.icon,  this.imageHeight=100,
  });
  final String subTitle;
  final String imageName;
  final Icon icon;
final double imageHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: ListTile(
          onTap: () {},
          title: Image.asset("assets/images/$imageName.png",height: imageHeight,),
          contentPadding: EdgeInsets.zero,
          subtitle: Text(subTitle),
          leading: icon,
          trailing: const Icon(Icons.chevron_right),
        ),
      ),
    );
  }
}
