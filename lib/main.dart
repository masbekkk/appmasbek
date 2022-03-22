import 'package:appmasbek/provider/done_modules.dart';
import 'package:flutter/material.dart';
import 'package:appmasbek/flutter_layout.dart';
import 'package:appmasbek/main_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => DoneModulesProvider(),
      child: MaterialApp(
        title: "App Masbek",
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const MyHomePage(title: 'Hello world by masbek'),
      ),
    );
  }
}

class Sidebar extends StatelessWidget {
  // Sidebar obj = new Sidebar();
  // late TourismPlace place;
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
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/img08.jpg'),
                ),
              ),
              child: Text('Mohammad Subkhan',
                style: TextStyle(color: Colors.black, fontSize: 30),
              ),
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
            // ListTile(
            //   title: const Text('Flutter Layout'),
            //   onTap: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => DetailScreen(place: place)),
            //     );
            //   },
            // ),
            ListTile(
              title: const Text('Flutter Layout'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainScreen()),
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
  // int _counter = 0;
  // String _status = "";
  //
  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //     if(_counter %2 == 0) _status = "Genap: ";
  //     else _status = "Ganjil: ";
  //     for(int i=0; i<=_counter; i++) {
  //       if(i%2 == 0){
  //         if (i%3 == 0) _status += '${i}, ';
  //       }
  //     }
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: const Center(
         child: Text(
              'Hello world!',
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
        title: const Text('Menampilkan bilangan genap kelipatan 3'),
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
                  ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back!'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  child: const Text('Home!'),
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
                   ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('Go Back!'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const MyApp()),
                    );
                  },
                  child: const Text('Home!'),
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

// class MyThirdScreen extends StatefulWidget {
//   const MyThirdScreen({Key? key}) : super(key: key);
//   @override
//   State<MyThirdScreen> createState() => ThirdScreen();
// }

// class ThirdScreen extends State<MyThirdScreen> {

//   int _counter = 0;
//   String _status = "";
//   void incrementCounter() {
//     setState(() {
//       _counter++;
//       if(_counter %2 == 0) {_status = "Genap: ";}
//       else {_status = "Ganjil: ";}
//       for(int i=1; i<=_counter; i++) {
//         int _flag =0;
//         for(int j=1; j<=i; j++){
//           if(i%j == 0) _flag++;
//         }
//         if(_flag == 2) _status += '$i, ';
//       }
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Menampilkan bilangan prima'),
//       ),
//       body: Center(
//          child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text(
//                   'u click btn many times: ',
//                   ),
//                   Text('$_counter',
//                   style: Theme.of(context).textTheme.headline4,
                  
//                   ),
//                   Text(_status,
//                   style: Theme.of(context).textTheme.headline6,
//                   ),
//                    ElevatedButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('Go Back!'),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(builder: (context) => const MyApp()),
//                     );
//                   },
//                   child: const Text('Home!'),
//                 ),
//               ],
//             ),
//         ),
//         drawer: Sidebar(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.stars),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }


