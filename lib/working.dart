import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart' hide Icon;
import 'dart:html';
import 'dart:ui' as ui;

import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:search_map_place/search_map_place.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  GlobalKey<FormState> _oFormKey = GlobalKey<FormState>();
  TextEditingController _controller1;
  TextEditingController _controller2;
  TextEditingController _controller3;
  TextEditingController _controller4;
  //String _initialValue;
  String _valueChanged1 = '';
  String _valueToValidate1 = '';
  String _valueSaved1 = '';
  String _valueChanged2 = '';
  String _valueToValidate2 = '';
  String _valueSaved2 = '';
  String _valueChanged3 = '';
  String _valueToValidate3 = '';
  String _valueSaved3 = '';
  String _valueChanged4 = '';
  String _valueToValidate4 = '';
  String _valueSaved4 = '';
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
       body:
      Row(
        children: [
       Flexible(
         child: 
        Container(
          child: 
        SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                  child: Form(
                    key: _oFormKey,
                    child: Column(
                      children: <Widget>[
                       Text("pickup"),

                        DateTimePicker(
                          type: DateTimePickerType.dateTimeSeparate,
                          dateMask: 'd MMM, yyyy',
                          controller: _controller1,
                          //initialValue: _initialValue,
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                          icon: Icon(Icons.event),
                          dateLabelText: 'Date',
                          timeLabelText: "Hour",
                          selectableDayPredicate: (date) {
                            if (date.weekday == 6 || date.weekday == 7) {
                              return false;
                            }
                            return true;
                          },
                          onChanged: (val) => setState(() => _valueChanged1 = val),
                          validator: (val) {
                            setState(() => _valueToValidate1 = val);
                            return null;
                          },
                          onSaved: (val) => setState(() => _valueSaved1 = val),
                        ),
                        SizedBox(height: 20,),
                        Text("drop off"),
                        DateTimePicker(
                          type: DateTimePickerType.time,
                          controller: _controller4,
                          //initialValue: _initialValue,
                          icon: Icon(Icons.access_time),
                          timeLabelText: "Time",
                          onChanged: (val) => setState(() => _valueChanged4 = val),
                          validator: (val) {
                            setState(() => _valueToValidate4 = val);
                            return null;
                          },
                          onSaved: (val) => setState(() => _valueSaved4 = val),
                        ),
                        SizedBox(height: 20),
                        RaisedButton(
                          onPressed: () {
                            final loForm = _oFormKey.currentState;
                            loForm.reset();
                            setState(() {
                              _valueChanged1 = '';
                              _valueChanged2 = '';
                              _valueChanged3 = '';
                              _valueChanged4 = '';
                              _valueToValidate1 = '';
                              _valueToValidate2 = '';
                              _valueToValidate3 = '';
                              _valueToValidate4 = '';
                              _valueSaved1 = '';
                              _valueSaved2 = '';
                              _valueSaved3 = '';
                              _valueSaved4 = '';
                            });
                          },
                          child: Text('submit'),
                        ),
                      ],
                    ),
                  ),
                ),
        ),
         
      ),
      Flexible(
           child:
            Container(
             child: getMap(),
      ),
      ),
        ]
    ),
    );
  }

  Widget getMap() {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {


      final mapOptions = new MapOptions()
        ..zoom = 8
        ..center = new LatLng(30.2669444, 32.7427778);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = new GMap(elem, mapOptions);

      Marker(MarkerOptions()
        ..position = LatLng(30.2669444, 32.7427778)
        ..map = map
        ..title = 'Hello World!');

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
