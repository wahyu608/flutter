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
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 213, 33, 17),
        foregroundColor: Color.fromARGB(255, 226, 200, 7),
        title: const Text('Wahyu Kelompok 1'),
        actions: const [
          Icon(Icons.notifications),
          SizedBox(width: 10),
          Icon(Icons.account_circle),
          SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const HelloWorld(),
            MyRow(),
            const SizedBox(height: 20),
            MyNetworkImage(),
            MyAssetImage(),
            MyTextButton(),
            MyElevatedButton(),
             const SizedBox(height: 20),
            MyFilledButton(),
            const SizedBox(height: 20),
            MyListTile(),
          ],
        ),
      ),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Hello world',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Color.fromARGB(255, 236, 172, 9),
        ),
      ),
    );
  }
}

class MyRow extends StatelessWidget {
  const MyRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 100,
          width: 100,
          color: Colors.amber,
          child:Center(child: Text(
           'Container 1',
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 10,
           color: Color.fromARGB(200, 0, 172, 9),
           ),
          ),
        )),
        Container(
          height: 100,
          width: 100,
          color: Color.fromARGB(255, 162, 133, 2),
          child:Center(child: Text(
           'Container 2',
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 10,
           color: Color.fromARGB(255, 236, 172, 9),
           ),
          ),
        )),
        Container(
          height: 100,
          width: 100,
          color: Color.fromARGB(255, 129, 87, 4),
          child:Center(child: Text(
           'Container 3',
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 10,
           color: Color.fromARGB(255, 236, 172, 9),
           ),
          ),
        )
        ),
        Container(
          height: 100,
          width: 100,
          color: Color.fromARGB(255, 75, 56, 1),
          child:Center(child: Text(
           'Container 4',
           style: TextStyle(
           fontWeight: FontWeight.bold,
           fontSize: 10,
           color: Color.fromARGB(255, 236, 172, 9),
           ),
          ),
        )
        ),
      ],
    );
  }
}

class MyNetworkImage extends StatelessWidget {
  const MyNetworkImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      'https://images.pexels.com/photos/416160/pexels-photo-416160.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940',
      width: 200,
      fit: BoxFit.contain,
    );
  }
}

class MyAssetImage extends StatelessWidget {
  const MyAssetImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/kucing.jpeg',
      height: 400,
      width: 300,
      fit: BoxFit.contain,
    );
  }
}

class MyTextButton extends StatelessWidget {
  const MyTextButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Text Button',
        style: TextStyle(
          color: Color.fromARGB(255, 243, 191, 33),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }
}

class MyElevatedButton extends StatelessWidget {
  const MyElevatedButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 192, 18, 18),
        foregroundColor: Color.fromARGB(255, 224, 192, 11),
      ),
      child: const Text('Elevated Button'),
    );
  }
}

class MyFilledButton extends StatelessWidget {
  const MyFilledButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Color.fromARGB(255, 189, 27, 9),
        foregroundColor: Color.fromARGB(255, 225, 189, 10),
      ),
      child: const Text('Filled Button'),
    );
  }
}

class MyListTile extends StatelessWidget {
  const MyListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.notifications),
      title: const Text('title'),
      subtitle: const Text('subtitle'),
      trailing: const Icon(Icons.access_time_outlined),
      tileColor: Color.fromARGB(255, 235, 209, 15),
    );
  }
}
