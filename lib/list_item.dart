import 'package:appmasbek/model/programming_modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListItem extends StatelessWidget{
  final ProgrammingModules place;
  final bool isChecked;
  final Function(bool? value) onCheckboxClick;
  const ListItem({
    required this.place,
    required this.isChecked,
    required this.onCheckboxClick
    });

  @override
  Widget build(BuildContext context){
    return Card(
      color: isChecked ? Colors.white60 : Colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Image.network(place.image, width: 300, height: 150)
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text(place.materi,
                  style: const TextStyle(fontSize: 16.0)
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Icon(Icons.query_builder),
                  Text(place.estimasi),
                ],
              ),
              ),
          ),
          Checkbox(
            checkColor: Colors.blueAccent,
            value: isChecked, 
            onChanged: onCheckboxClick
            ),
          ],
        )
    );
  }
}