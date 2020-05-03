import 'package:covid19flutter/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19flutter/services/corona.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;
  CoronaModel weatherModel = CoronaModel();

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {

    var coronaData = await weatherModel.getAPIData();

    Navigator.push(context, CupertinoPageRoute(
      builder: (context){
        return LocationScreen(
          locationWither: coronaData,
        );
      }
    ));
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: SpinKitDoubleBounce(
            color: Colors.white,
            size: 50.0,
          ),
        ),
      ),
    );
  }
}
