
import 'dart:convert';

import 'package:appmasbek/model/programming_modules.dart';
import 'package:http/http.dart' as http;

class ApiService{
  static const String _baseUrl = 'http://';
  static const String _ip = '192.168.0.102:8000';
  static const String _route = '/api/bismillah';
  // static final String _apiKey = 'e73963a645884c96bb916c3dfbceb1fe';
  // static final String _category ='bussiness';
  // static final String _country = 'id';

  Future<ProgrammingModulesResult> topHeadlines() async{
    final response = await http.get(Uri.parse(_baseUrl + _ip + _route));
    if(response.statusCode == 200){
      return ProgrammingModulesResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load top headlines');
    }
  }
}