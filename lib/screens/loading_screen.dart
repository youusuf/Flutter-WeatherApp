import 'package:clima_app/services/networking.dart';
import 'package:clima_app/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:clima_app/services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima_app/screens/location_screen.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}
class _LoadingScreenState extends State<LoadingScreen> {

  void getLocationData()async{

      var weatherData = await WeatherModel().getLocationWeather();
     Navigator.push(context, MaterialPageRoute(builder:(context)=>LocationScreen(
       weatherData: weatherData,
     )));

  }
  @override
  void initState() {
    super.initState();
    getLocationData();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),
      )
    );
  }
}