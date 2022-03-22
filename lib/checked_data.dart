import 'package:appmasbek/model/programming_modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class CheckedData extends StatelessWidget{
  final List<ProgrammingModules> dataChecked;
  const CheckedData({
    Key? key, required this.dataChecked
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    // final List<ProgrammingModules> dataChecked = 
    //   Provider.of<CheckedData>(
    //     context,
    //     listen: false,
    //   ).dataChecked;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Course yang Telah Dipelajari'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index){
          final ProgrammingModules place = dataChecked[index];
          return Card(
            color: Colors.white60,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
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
                const Icon(Icons.done_outline),
              ],
            ),
          );
        },
        itemCount: dataChecked.length,
        ),
    );
  }
}