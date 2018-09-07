import 'dart:async';
import 'package:location/location.dart';
import 'package:dio/dio.dart';
import '../models/home.dart';
import '../api/api.dart';

var currentLocation = <String, double>{};
var weather = <Weather>[];

final location = new Location();

Dio dioClient = new Dio();

class HomeService {

  getLocation() async {
    try {
      currentLocation = await location.getLocation();
    } catch(e) {
      currentLocation = null;
    }
    return currentLocation;
  }

  getWeather (location) async {
    Response res;
    try {
//      res = await dioClient.get(Api.forecast('${location['longitude']},${location['latitude']}'));
    res = await dioClient.get('https://free-api.heweather.com/s6/weather/forecast?key=8ee29a6e9d3f469fb4dff249ab025ba6&location=-122.084,37.4219983');
    print('fuck sucesss');
    print(res.data);
    } catch(e) {
      if(e.response) {
        print(e.response.data);
        print(e.response.headers);
        print(e.response.request);
      } else{
        // Something happened in setting up or sending the request that triggered an Error
        print(e.request);
        print(e.message);
      }
      res = null;
    }
    return res;
  }

}
