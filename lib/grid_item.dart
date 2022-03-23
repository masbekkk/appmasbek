import 'package:appmasbek/model/programming_modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget{
  final ProgrammingModules place;
  final bool isChecked;
  final Function(bool? value) onCheckboxClick;
  const GridItem({
    required this.place,
    required this.isChecked,
    required this.onCheckboxClick
    });

  @override
  Widget build(BuildContext context){
      return Card(
        color: isChecked ? Colors.white60 : Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Image.network(
                place.image,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                place.materi,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, bottom: 8.0),
              child: Text(
                place.estimasi,
              ),
            ),
            Checkbox(
            checkColor: Colors.blueAccent,
            value: isChecked, 
            onChanged: onCheckboxClick
            ),
          ],
        ),
      );
  }
}