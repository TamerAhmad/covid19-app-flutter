import 'package:covid19flutter/screens/list_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid19flutter/utilities/constants.dart';
import 'package:covid19flutter/services/corona.dart';
import 'list_widget.dart';
import 'list_widget_2.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWither});
  final locationWither;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  String totalCases;
  String totalDeaths;
  String totalRecovered;
  String totalActiveCases;

  String totalCasesUSA;
  String totalRecoveredUSA;
  String totalDeathsUSA;

  String totalCasesEsp;
  String totalRecoveredEsp;
  String totalDeathsEsp;

  String totalCasesIT;
  String totalRecoveredIT;
  String totalDeathsIT;

  String totalCasesCanada;
  String totalRecoveredCanada;
  String totalDeathsCanada;

  String totalCasesSA;
  String totalRecoveredSA;
  String totalDeathsSA;

  String totalCasesPS;
  String totalRecoveredPS;
  String totalDeathsPS;

  CoronaModel coronaModel = CoronaModel();

  @override
  void initState() {
    super.initState();
    updateUI(widget.locationWither);
  }

  void updateUI(dynamic coronaData) {
    setState(() {
      if (coronaData == null) {
//        temp = 0;
//        cityName = 'Data';
//        textWeather = 'Error';
        return;
      }
      totalCases = coronaData['reports'][0]['table'][0][0]['TotalCases'];
      totalDeaths = coronaData['reports'][0]['table'][0][0]['TotalDeaths'];
      totalActiveCases = coronaData['reports'][0]['table'][0][0]['ActiveCases'];
      totalRecovered =
          coronaData['reports'][0]['table'][0][0]['TotalRecovered'];

      totalCasesUSA = coronaData['reports'][0]['table'][0][1]['TotalCases'];
      totalRecoveredUSA = coronaData['reports'][0]['table'][0][1]['TotalRecovered'];
      totalDeathsUSA = coronaData['reports'][0]['table'][0][1]['TotalDeaths'];

      totalCasesEsp = coronaData['reports'][0]['table'][0][2]['TotalCases'];
      totalRecoveredEsp = coronaData['reports'][0]['table'][0][2]['TotalRecovered'];
      totalDeathsEsp = coronaData['reports'][0]['table'][0][2]['TotalDeaths'];

      totalCasesIT = coronaData['reports'][0]['table'][0][3]['TotalCases'];
      totalRecoveredIT = coronaData['reports'][0]['table'][0][3]['TotalRecovered'];
      totalDeathsIT = coronaData['reports'][0]['table'][0][3]['TotalDeaths'];

      totalCasesIT = coronaData['reports'][0]['table'][0][3]['TotalCases'];
      totalRecoveredIT = coronaData['reports'][0]['table'][0][3]['TotalRecovered'];
      totalDeathsIT = coronaData['reports'][0]['table'][0][3]['TotalDeaths'];

      totalCasesCanada = coronaData['reports'][0]['table'][0][12]['TotalCases'];
      totalRecoveredCanada = coronaData['reports'][0]['table'][0][12]['TotalRecovered'];
      totalDeathsCanada = coronaData['reports'][0]['table'][0][12]['TotalDeaths'];

      totalCasesSA = coronaData['reports'][0]['table'][0][22]['TotalCases'];
      totalRecoveredSA = coronaData['reports'][0]['table'][0][22]['TotalRecovered'];
      totalDeathsSA = coronaData['reports'][0]['table'][0][22]['TotalDeaths'];

      totalCasesPS = coronaData['reports'][0]['table'][0][102]['TotalCases'];
      totalRecoveredPS = coronaData['reports'][0]['table'][0][102]['TotalRecovered'];
      totalDeathsPS = coronaData['reports'][0]['table'][0][102]['TotalDeaths'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Container(
            child: ListView(
              children: <Widget>[
                Stack(
                  alignment: AlignmentDirectional.center,
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(10.0),
                        ),
                        color: Colors.blueGrey,
                      ),
                    ),
                    Text(
                      'Covid 19',
                      style: kTitleStyle,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'World',
                              style: kTextStyle,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                ListWidget(
                                  textNumber: totalCases,
                                  textState: 'Total Cases',
                                  image: Image(
                                    image: AssetImage('images/man.png'),
                                  ),
                                ),
                                ListWidget(
                                  textNumber: totalRecovered,
                                  textState: 'Total Recovered',
                                  image: Image(
                                    image: AssetImage('images/patient.png'),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                ListWidget(
                                  textState: 'Total Deaths',
                                  textNumber: totalDeaths,
                                  image: Image(
                                    image: AssetImage('images/grave.png'),
                                  ),
                                ),
                                ListWidget(
                                  textNumber: totalActiveCases,
                                  textState: 'Active Cases',
                                  image: Image(
                                    image: AssetImage('images/mask.png'),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(
                                    height: 20.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Container(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: <Widget>[
                                              Expanded(
                                                child: Image(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  image: AssetImage('images/flags.png'),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 2,
                                                child: Image(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  image: AssetImage('images/man.png'),
                                                ),
                                              ),
                                              Expanded(
                                                child: Image(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  image: AssetImage('images/patient.png'),
                                                ),
                                              ),
                                              Expanded(
                                                child: Image(
                                                  height: 50.0,
                                                  width: 50.0,
                                                  image: AssetImage('images/grave.png'),
                                                ),
                                              ),
                                            ],
                                          ),
                                          ListWidget2(
                                            country: 'us',
                                            casesNumber: totalCasesUSA,
                                            deathsNumber: totalDeathsUSA,
                                            recoverdNumber: totalRecoveredUSA,
                                          ),
                                          SizedBox(height: 5.0,),
                                          ListWidget2(
                                            country: 'es',
                                            casesNumber: totalCasesEsp,
                                            deathsNumber: totalDeathsEsp,
                                            recoverdNumber: totalRecoveredEsp,
                                          ),
                                          SizedBox(height: 5.0,),
                                          ListWidget2(
                                            country: 'it',
                                            casesNumber: totalCasesIT,
                                            deathsNumber: totalDeathsIT,
                                            recoverdNumber: totalRecoveredIT,
                                          ),
                                          SizedBox(height: 5.0,),
                                          ListWidget2(
                                            country: 'ca',
                                            casesNumber: totalCasesCanada,
                                            deathsNumber: totalDeathsCanada,
                                            recoverdNumber: totalRecoveredCanada,
                                          ),
                                          SizedBox(height: 5.0,),
                                          ListWidget2(
                                            country: 'sa',
                                            casesNumber: totalCasesSA,
                                            deathsNumber: totalDeathsSA,
                                            recoverdNumber: totalRecoveredSA,
                                          ),
                                          SizedBox(height: 5.0,),
                                          ListWidget2(
                                            country: 'ps',
                                            casesNumber: totalCasesPS,
                                            deathsNumber: totalDeathsPS,
                                            recoverdNumber: totalRecoveredPS,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
