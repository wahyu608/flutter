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
        backgroundColor: Colors.blue, 
        foregroundColor: Colors.white, 
        title: const Text('Appbar'),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.account_circle),
          SizedBox(
            width: 16,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Center(
              child: Text(
                'Hello world', 
                style: TextStyle(
                  fontWeight: FontWeight.bold, 
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 100, 
                  width: 100, 
                  color: Colors.amber,
                ),
                Container(
                  height: 100, 
                  width: 100, 
                  color: Colors.deepPurple,
                ),
                Container(
                  height: 100, 
                  width: 100, 
                  color: Colors.deepOrangeAccent,
                ),
                Container(
                  height: 100, 
                  width: 100, 
                  color: Colors.green,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
              width: 200,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20),

            Image.asset(
              'assets/images/kucing.jpeg',
              height: 400,
              width: 300,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 20), 
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const SizedBox(height: 20),
            const SizedBox(height: 20),

            TextButton(
              onPressed: () {
                
              },
              child: const Text(
                'Text Button',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
                
              },
              child: const Text('Elevated Button'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: () {
              
              },
              child: const Text('Filled Button'),
            ),

            const SizedBox(height: 20), 
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('title'),
              subtitle: const Text('subtitle'),
              trailing: const Icon(Icons.access_time_outlined),
              tileColor: Colors.grey.shade200,
            ),
          ],
        ),
      ),
    );
  }
}
