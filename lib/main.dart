import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            shadowColor: Colors.black87,
            title: const Text("Hai, Ary",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            actions: const [
              Icon(Icons.shopping_cart, color: Colors.black87),
              SizedBox(width: 8),
              Icon(Icons.inbox_rounded, color: Colors.black87),
              SizedBox(width: 16),
              CircleAvatar(
                  radius: 15,
                  backgroundImage: AssetImage('images/images.jpeg')),
              SizedBox(width: 8)
            ],
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(4.0),
              child: Container(
                width: 350,
                color: Colors.black54,
                height: 1.4,
              ),
            )));
  }
}
