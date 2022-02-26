import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "App Masbek",
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Hello world by masbek'),
      
    );
  }
}

class Sidebar extends StatelessWidget {
  // Sidebar obj = new Sidebar();
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.yellow,
              ),
              child: Text('Mohammad Subkhan'),
              // style: Theme.of(context).textTheme.headline4,
            ),
            ListTile(
              title: const Text('Latihan'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MyFirstScreen()),
                );
              },
            ),
            ListTile(
              title: const Text('Tugas'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MySecondScreen()),
                );
              },
            ),
          ],
        ),
      );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String _status = "";

  void _incrementCounter() {
    setState(() {
      _counter++;
      if(_counter %2 == 0) _status = "Genap: ";
      else _status = "Ganjil: ";
      for(int i=0; i<=_counter; i++) {
        if(i%2 == 0){
          if (i%3 == 0) _status += '${i}, ';
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
         child: Text(
              'Hello world! You have clicked the button this many times:',
            ),
        ),
        drawer: Sidebar(),
    );
  }
}


class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({Key? key}) : super(key: key);
  @override
  State<MyFirstScreen> createState() => FirstScreen();
}

class FirstScreen extends State<MyFirstScreen> {
  int _counter = 0;
  String _status = "";
  void incrementCounter() {
    setState(() {
      _counter++;
      if(_counter %2 == 0) {_status = "Genap: ";}
      else {_status = "Ganjil: ";}
      for(int i=0; i<=_counter; i++) {
        if(i%2 == 0){
          if (i%3 == 0) _status += '$i, ';
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menampilkan bilangan genap kelipatan 3'),
      ),
      body: Center(
         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'u click btn many times: ',
                  ),
                  Text('$_counter',
                  style: Theme.of(context).textTheme.headline4,
                  
                  ),
                  Text(_status,
                  style: Theme.of(context).textTheme.headline6,
                  ),
              ],
            ),
        ),
        drawer: Sidebar(),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.stars),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({Key? key}) : super(key: key);
  @override
  State<MySecondScreen> createState() => SecondScreen();
}

class SecondScreen extends State<MySecondScreen> {

  int _counter = 0;
  String _status = "";
  void incrementCounter() {
    setState(() {
      _counter++;
      if(_counter %2 == 0) {_status = "Genap: ";}
      else {_status = "Ganjil: ";}
      for(int i=1; i<=_counter; i++) {
        int _flag =0;
        for(int j=1; j<=i; j++){
          if(i%j == 0) _flag++;
        }
        if(_flag == 2) _status += '$i, ';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menampilkan bilangan prima'),
      ),
      body: Center(
         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'u click btn many times: ',
                  ),
                  Text('$_counter',
                  style: Theme.of(context).textTheme.headline4,
                  
                  ),
                  Text(_status,
                  style: Theme.of(context).textTheme.headline6,
                  ),
              ],
            ),
        ),
        drawer: Sidebar(),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.stars),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


