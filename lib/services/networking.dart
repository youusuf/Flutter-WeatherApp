import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:clima_app/services/location.dart';
const apiKey = '745a19628c79a47f5758caae2297d8f8';
class NetworkHelper{
  final String url;
  Location location = Location();
  NetworkHelper(this.url);
  Future getData()async{
    http.Response response = await http.get(url);
    if(response.statusCode==200){
      var data = jsonDecode(response.body);
      return data;
  }
    else {
      print(response.statusCode);
    }
  }
}