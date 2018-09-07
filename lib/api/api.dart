final String apiKey = '8ee29a6e9d3f469fb4dff249ab025ba6';
final String forecastApi = 'https://free-api.heweather.com/s6/weather/forecast';
final String cityApi = 'https://search.heweather.com/find';

class Api {

  static String forecast(String location) {
    return '$forecastApi?key=$apiKey&location=$location';
  }

  static String city(String location) {
    return '$cityApi?key=$apiKey&location=$location';
  }

}