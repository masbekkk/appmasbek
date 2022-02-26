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
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
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

  void _decrementCounter() {
    setState(() {
      _counter--;
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
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: const Center(
         child: Text(
              'Hello world! You have clicked the button this many times:',
            ),
        ),
        drawer: Sidebar(),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.stars),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({Key? key}) : super(key: key);
  @override
  State<MyFirstScreen> createState() => FirstScreen();
}

class FirstScreen extends State<MyFirstScreen> {
  int counter = 0;
  String status = "";
  void incrementCounter() {
    setState(() {
      counter++;
      if(counter %2 == 0) status = "Genap: ";
      else status = "Ganjil: ";
      for(int i=0; i<=counter; i++) {
        if(i%2 == 0){
          if (i%3 == 0) status += '${i}, ';
        }
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text('Menampilkan bilangan genap kelipatan 3'),
      ),
      body: Center(
         child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'u click btn many times: ',
                  ),
                  Text('${counter}',
                  style: Theme.of(context).textTheme.headline4,
                  
                  ),
                  Text(status,
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

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),
      drawer: Sidebar(),
    );
  }
}


