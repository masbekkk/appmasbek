import 'package:appmasbek/model/programming_modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class DoneModulesProvider extends ChangeNotifier{
  final List<ProgrammingModules> _checkedlist = [];

  List<ProgrammingModules> get checkedList => _checkedlist;

  void complete(ProgrammingModules place, bool isChecked){
    isChecked
      ? _checkedlist.add(place)
      : _checkedlist.remove(place);
    notifyListeners();
  } 
}