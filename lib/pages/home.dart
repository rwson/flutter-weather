import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/home.dart';
import '../service/home.dart';
import '../util/assets.dart';

HomeService homeService = new HomeService();

class HomeState extends StatefulWidget {
  @override
  Home createState() => new Home();
}

class Home extends State<HomeState> {
  double lat;
  double lng;
  int cityCode;
  String cityName;
  Map<String, double> location;
  List<Weather> weather;
  String background;

  Future<void> getWeather () async {
    try {
//      location = await homeService.getLocation();
      weather = await homeService.getWeather(location);
      print(weather);
    } catch(e) {
      weather = e;
      print('fuck e');
      // The request was made and the server responded with a status code
      // that falls out of the range of 2xx and is also not 304.
    }
//    this.weather = await homeService.getWeather(location);
    print('weather');
    print(weather);
    print('weather');
//    setState(() {
//
//    });
  }

  @override
  void initState() {
    super.initState();
    getWeather();
  }

  @override
  void dispose() {
    //注意这里关闭
    super.dispose();
  }

  void _relocation() {
//    setState(() {
//
//    });
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Container()
//      home: new Scaffold(
//          body: new Stack(
//          children: <Widget>[
//            new Container(
//              decoration: new BoxDecoration(
//                image: new DecorationImage(
//                  image: new AssetImage(AssetLibrary.nightSmog),
//                  fit: BoxFit.cover
//                )
//              )
//            ),
//            new HomeContent()
//          ]
//      ))
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(top: 30.0),
      child: new Column(
        children: <Widget>[
          new LocationInfo(),

          new Row(
              children: <Widget>[
                new Container(
                  width: 60.0,
                  height: 30.0,
                  margin: const EdgeInsets.only(left: 15.0),
                  padding: const EdgeInsets.all(6.0),
                  decoration: new BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.all(new Radius.circular(8.0)),
                  ),
                  child: new Stack(
                    children: <Widget>[
                      new Container(
                        width: 4.0,
                        height: 18.0,
                        decoration: new BoxDecoration(
                          color: Color.fromARGB(100, 21, 211, 160),
                          borderRadius: BorderRadius.all(new Radius.circular(8.0)),
                        ),
                      ),
                      new Container(
                        margin: const EdgeInsets.only(
                            left: 10.0
                        ),
                        child: new Text('良 79',
                          style: new TextStyle(
                              color: Colors.white,
                              fontSize: 14.0
                          ))
                      )
                    ],
                  ),
                ),
              ]
          ),

          new TodayTomorrow(),

          new HourWeather(),

          new WeekWeather()
        ]
      )
    );
  }
}

class LocationInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 25.0,
        width: MediaQuery.of(context).size.width,
        child: new Text(
            '南京市江宁区将军大道',
            textAlign: TextAlign.center,
            style: new TextStyle(
                color: Colors.white,
                fontSize: 14.0
            )
        )
    );
  }
}

class TodayTomorrow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 30.0),
      child: new Column(
          children: <Widget>[
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('26',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 40.0
                    )
                ),
                new Text('℃',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14.0
                    )
                )
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('阴',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14.0
                    )),
                new Text('阴',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14.0
                    ))
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('湿度 70%',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14.0
                    )),
                new Text('|',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14.0
                    )),
                new Text('北风3级',
                    style: new TextStyle(
                        color: Colors.white,
                        fontSize: 14.0
                    ))
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Text('天暗下来, 你就是阳光',
                  style: new TextStyle(
                      color: Colors.white,
                      fontSize: 14.0
                  ))
              ],
            ),
            new Row(
              children: <Widget>[
                new Expanded(
                    child: new Container(
                      height: 80.0,
                      decoration: new BoxDecoration(
                          border: new Border(right: new BorderSide(width: 1.0, color: Colors.white10))
                      ),
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                            child: new Container(
                              height: 80.0,
                              padding: const EdgeInsets.only(
                                  left: 10.0
                              ),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Row(
                                    children: <Widget>[
                                      new Text('fuck')
                                    ]
                                  ),
                                  new Row(
                                    children: <Widget>[
                                      new Text('fuck2')
                                    ]
                                  )
                                ],
                              )
                            )
                          ),
                          new Expanded(
                            child: new Container(
                              height: 80.0,
                              padding: const EdgeInsets.only(
                                  right: 10.0
                              ),
                                child: new Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    new Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        new Text('fuck')
                                      ],
                                    ),
                                    new Row(
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: <Widget>[
                                        new Text('fuck2')
                                      ],
                                    )
                                  ],
                                )
                            )
                          )
                        ]
                      )
                    )
                ),
                new Expanded(
                    child: new Container(
                      height: 80.0,
                      child: new Row(
                        children: <Widget>[
                          new Expanded(
                              child: new Container(
                                  height: 80.0,
                                  padding: const EdgeInsets.only(
                                      left: 10.0
                                  ),
                                  child: new Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Row(
                                          children: <Widget>[
                                            new Text('fuck')
                                          ]
                                      ),
                                      new Row(
                                          children: <Widget>[
                                            new Text('fuck2')
                                          ]
                                      )
                                    ],
                                  )
                              )
                          ),
                          new Expanded(
                              child: new Container(
                                  height: 80.0,
                                  padding: const EdgeInsets.only(
                                      right: 10.0
                                  ),
                                  child: new Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      new Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          new Text('fuck')
                                        ],
                                      ),
                                      new Row(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: <Widget>[
                                          new Text('fuck2')
                                        ],
                                      )
                                    ],
                                  )
                              )
                          )
                        ],
                      )
                    )
                )
              ]
            )
          ]
      )
    );
  }
}

class HourWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(top: 30.0),
      height: 140.0,
      child: new ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            new Container(
              width: 160.0,
              height: 90.0,
              color: Colors.red,
            ),
            new Container(
              width: 160.0,
              height: 90.0,
              color: Colors.blue,
            ),
            new Container(
              width: 160.0,
              height: 90.0,
              color: Colors.green,
            ),
            new Container(
              width: 160.0,
              height: 90.0,
              color: Colors.yellow,
            ),
            new Container(
              width: 160.0,
              height: 90.0,
              color: Colors.orange,
            ),
            new Container(
              width: 160.0,
              height: 90.0,
              color: Colors.orange,
            )
          ]
      )
    );
  }
}

class WeekWeather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        margin: const EdgeInsets.only(top: 30.0),
        height: 140.0,
        child: new ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              new Container(
                width: 160.0,
                height: 90.0,
                color: Colors.red,
              ),
              new Container(
                width: 160.0,
                height: 90.0,
                color: Colors.blue,
              ),
              new Container(
                width: 160.0,
                height: 90.0,
                color: Colors.green,
              ),
              new Container(
                width: 160.0,
                height: 90.0,
                color: Colors.yellow,
              ),
              new Container(
                width: 160.0,
                height: 90.0,
                color: Colors.orange,
              ),
              new Container(
                width: 160.0,
                height: 90.0,
                color: Colors.orange,
              )
            ]
        )
    );
  }
}

