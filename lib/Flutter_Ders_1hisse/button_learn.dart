import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Test App")),
      body: Column(children: [
        TextButton(
          onPressed: () {},
          child: const Text("Skip"),
        ),
        ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Data",
            )),
        IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
        FloatingActionButton(
          onPressed: () {},
          child: const Text("+"),
        ),
        OutlinedButton(
          onPressed: () {},
          child: const Text("Data"),
          style: OutlinedButton.styleFrom(backgroundColor: Colors.amber),
        ),
        InkWell(
          child: const Text("welcome"),
          onTap: () {},
        ),
        Container(
          width: 400,
          height: 20,
          color: Colors.black,
        ),
        const SizedBox(height: 30,),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFFF7622),shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12)))),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 108,vertical: 16),
            child: Text("Next",style: TextStyle(color: Colors.white),),
          ),
        ),
        TextButton(onPressed: () {}, child: const Text("Skip",style: TextStyle(color: Color.fromARGB(255, 126, 124, 124)),))     
      


      ]),

    
    );
  }
}
