import 'package:appmasbek/checked_data.dart';
import 'package:appmasbek/flutter_layout.dart';
import 'package:appmasbek/main.dart';
// import 'package:appmasbek/model/tourism_place.dart';
import 'package:appmasbek/model/programming_modules.dart';
import 'package:appmasbek/modules_list.dart';
import 'package:appmasbek/modules_grid.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget{
  MainScreen({Key? key}) : super(key: key);
  @override
  _MainScreenState createState() => _MainScreenState();

}
  class _MainScreenState extends State<MainScreen>{
    final List<ProgrammingModules> checkedData = [];

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: const Text("Programming Course"),
          actions: [
            IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return CheckedData(dataChecked: checkedData);
                }));
              }, 
              icon: const Icon(Icons.done_outline))
          ],
        ),
        body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return ModulesList(checkedData: checkedData);
          } else {
            return ModulesGrid(checkedData: checkedData);
          }
        },
      ),
        drawer: Sidebar(),
      );
    }
  }
