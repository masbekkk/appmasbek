import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;
//import package file manually

class WriteSQLdata extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
     return WriteSQLdataState();
  }
}

class WriteSQLdataState extends State<WriteSQLdata>{

  TextEditingController materictl = TextEditingController();
  TextEditingController estimasictl = TextEditingController();
  TextEditingController silabusctl = TextEditingController();
  TextEditingController descctl = TextEditingController();
  TextEditingController imagectl = TextEditingController();
  TextEditingController androidctl = TextEditingController();
  TextEditingController desktopctl = TextEditingController();
  TextEditingController iosctl = TextEditingController();
  TextEditingController multiplatformctl = TextEditingController();
  TextEditingController galleryctl = TextEditingController();
  //text controller for TextField

  late bool error, sending, success;
  late String msg;

  String phpurl = "http://192.168.0.105:8000/api/store";
  // do not use http://localhost/ for your local
  // machine, Android emulation do not recognize localhost
  // insted use your local ip address or your live URL
  // hit "ipconfig" on Windows or  "ip a" on Linux to get IP Address

  @override
  void initState() {
      error = false;
      sending = false;
      success = false;
      msg = "";
      super.initState();
  }

  Future<void> sendData() async {

     var res = await http.post(Uri.parse(phpurl), body: { 
          "materi": materictl.text,
          "estimasi": estimasictl.text,
          "silabus": silabusctl.text,
          "desc": descctl.text,
          "image": imagectl.text,
          "android": androidctl.text,
          "desktop": desktopctl.text,
          "ios": iosctl.text,
          "multiplatform": multiplatformctl.text,
          "gallery": galleryctl.text,
      }); //sending post request with header data

     if (res.statusCode == 200) {
       print(res.body); //print raw response on console
       var data = json.decode(res.body); //decoding json to array
       if(data["error"]){
          setState(() { //refresh the UI when error is recieved from server
             sending = false;
             error = true;
             msg = data["message"]; //error message from server
          });
       }else{
         
         materictl.text = "";
         estimasictl.text = "";
         silabusctl.text = "";
         descctl.text = "";
         imagectl.text = "";
         androidctl.text = "";
         desktopctl.text = "";
         iosctl.text = "";
         multiplatformctl.text = "";
         galleryctl.text = "";
         //after write success, make fields empty

          setState(() {
             sending = false;
             success = true; //mark success and refresh UI with setState
          });
       }
       
    }else{
       //there is error
        setState(() {
            error = true;
            msg = "Error during sending data.";
            sending = false;
            //mark error and refresh UI with setState
        });
    }
  }

  @override
  Widget build(BuildContext context) {
     return Scaffold(
        appBar: AppBar(
           title:Text("Write Data PHP & MySQL"),
           backgroundColor:Colors.red
        ), //appbar

        body: SingleChildScrollView( //enable scrolling, when keyboard appears,
                                   // hight becomes small, so prevent overflow
           child:Container( 
              padding: EdgeInsets.all(20),
              child: Column(children: <Widget>[
                
                Container( 
                  child:Text(error?msg:"Enter Student Information"), 
                  //if there is error then sho msg, other wise show text message
                ),

                Container( 
                   child:Text(success?"Write Success":"send data"),
                   //is there is success then show "Write Success" else show "send data"
                ),

                Container( 
                  child: TextField( 
                     controller: materictl,
                     decoration: InputDecoration(
                        labelText:"Materi:",
                        hintText:"Enter Materi",
                     ),
                  )
                ), //text input for name

                Container( 
                  child: TextField( 
                     controller: estimasictl,
                     decoration: InputDecoration(
                        labelText:"estimasi:",
                        hintText:"Enter learning estimasi",
                     ),
                  )
                ), //text input for estimasi

                Container( 
                  child: TextField(
                     controller: silabusctl,
                     decoration: InputDecoration(
                        labelText:"Silabus:",
                        hintText:"Enter Silabus",
                     ),
                  )
                ), //text input for class

                Container( 
                  child: TextField( 
                     controller: descctl,
                     decoration: InputDecoration(
                        labelText:"Description:",
                        hintText:"Enter Description of modules",
                     ),
                  )
                ),
              
                 Container( 
                  child: TextField( 
                     controller: imagectl,
                     decoration: InputDecoration(
                        labelText:"Image:",
                        hintText:"Input image for module",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: androidctl,
                     decoration: InputDecoration(
                        labelText:"is Android:",
                        hintText:"Enter can using on Android or no",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: desktopctl,
                     decoration: InputDecoration(
                        labelText:"is Desktop:",
                        hintText:"Enter can using on Desktop or no",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: iosctl,
                     decoration: InputDecoration(
                        labelText:"is iOS:",
                        hintText:"Enter can using on iOS or no",
                     ),
                  )
                ),
                 Container( 
                  child: TextField( 
                     controller: multiplatformctl,
                     decoration: InputDecoration(
                        labelText:"is Multiplatform:",
                        hintText:"Enter can using on Multiplatform or no",
                     ),
                  )
                ), 
                Container( 
                  child: TextField( 
                     controller: galleryctl,
                     decoration: InputDecoration(
                        labelText:"Enter image:",
                        hintText:"Enter image array seharusnya",
                     ),
                  )
                ), //text input for roll no

                Container( 
                   margin: EdgeInsets.only(top:20),
                   child:SizedBox( 
                     width: double.infinity,
                     child:RaisedButton(
                        onPressed:(){ //if button is pressed, setstate sending = true, so that we can show "sending..."
                          setState(() {
                             sending = true;
                          });
                          sendData();
                        },
                        child: Text(
                          sending?"Sending...":"SEND DATA",
                          //if sending == true then show "Sending" else show "SEND DATA";
                        ), 
                        color: Colors.redAccent,
                        colorBrightness: Brightness.dark,
                        //background of button is darker color, so set brightness to dark
                     )
                   )
                )
              ],)
           )
        ),
     );
  }
}