import 'package:appmasbek/flutter_layout.dart';
import 'package:appmasbek/list_item.dart';
import 'package:appmasbek/model/db_programming_modules.dart';
import 'package:appmasbek/model/programming_modules.dart';
import 'package:appmasbek/provider/done_modules.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:appmasbek/data/api/api_services.dart';

class ModulesList extends StatefulWidget{
  final List<ProgrammingModules> checkedData;

  const ModulesList({
    Key? key,
    required this.checkedData
  }) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  _ModulesListState createState() => _ModulesListState(checkedData);
  
  // _ModulesGridState createState() => _ModulesGridState(checkedData);

}

class _ModulesListState extends State<ModulesList>{
  final List<ProgrammingModules> dataChecked;
  late Future<ProgrammingModulesResult> _modules;
  @override
  void initState() {
    super.initState();
    _modules = ApiService().topHeadlines();
  }

  _ModulesListState(this.dataChecked);

  @override
Widget _buildList(BuildContext context) {
    return FutureBuilder(
      future: _modules,
      builder: (context, AsyncSnapshot<ProgrammingModulesResult> snapshot) {
        var state = snapshot.connectionState;
        if (state != ConnectionState.done) {
          return Center(child: CircularProgressIndicator());
        } else {
          if (snapshot.hasData) {
            return ListView.builder(
              shrinkWrap: true,
              itemCount: snapshot.data?.data.length,
              itemBuilder: (context, index) {
                var place = snapshot.data?.data[index];
                return InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return DetailScreen(place: place!);
                    }));
                  },
                  child: ListItem(
                    place: place!,
                    isChecked : dataChecked.contains(place),
                    onCheckboxClick: (bool? value){
                      setState(() {
                        if(value!=null){
                          value ?
                          dataChecked.add(place) :
                          dataChecked.remove(place);
                        }
                      });
                    },
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          } else {
            return Text('');
          }
        }
      },
    );
  }
  // _ModulesListState(this.dataChecked);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildList(context),
    );
  }


}



// class DataList extends StatelessWidget{}