import 'package:flutter/material.dart';

import 'chat_background.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFFF8F2F8),
      body: Stack(
        children: [
          const ChatBackground(),

          // Example positioned text
          Positioned(
            top: size.height * 0.1,
            left: size.width * 0.1,
            child: const Text(
              "Top Left ",
              style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold,color: Colors.white),
            ),
          ),

          Positioned(
            bottom: size.height * 0.1,
            right: size.width * 0.1,
            child: const Text(
              "Bottom Right Text",
              style: TextStyle(fontSize: 20, color: Colors.blueAccent),
            ),
          ),
          Align(
            //alignment: Alignment.topLeft, // or Alignment(0.2, -0.7)
            alignment:Alignment(0, 0),
            child: Text("Aligned",style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold,color: Colors.green),),
          ),
          Transform.translate(
            offset: Offset(100, 250), // x = right, y = down
            child: Text("Offset Translation",style: TextStyle(fontSize: 42, fontWeight: FontWeight.bold,color: Colors.red),),
          ),
        ],
      ),
    );
  }
}
