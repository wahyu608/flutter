import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        backgroundColor: Colors.blue, 
        foregroundColor: Colors.white, 
        title: Text('Appbar'),
        actions: [
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
      body: ListView(
        
        children: [
          Center(
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
          SizedBox(height: 20),
          Image.network(
            'https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
            width: 300,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20),
           SizedBox(height: 20),
            SizedBox(height: 20),
             SizedBox(height: 20),
          Image.asset(
            'assets/images/kucing.jpeg',
            height: 300,
            width: 300,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 20), 
          TextButton(
            onPressed: () {
              
            },
            child: Text(
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
            child: Text('Elevated Button'),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            onPressed: () {
          
            },
            child: Text('Filled Button'),
          ),

          SizedBox(height: 20), 
          Container(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('title'),
              subtitle: Text('subtitle'),
              trailing: Icon(Icons.access_time_outlined),
              tileColor: Colors.grey.shade200,
            ),
          ),
        ],
      ),
    );
  }
}
