import 'package:flutter/material.dart';
import 'package:covid19flutter/utilities/constants.dart';

class ListWidget2 extends StatelessWidget {
  final String country;
  final String casesNumber;
  final String recoverdNumber;
  final String deathsNumber;
  final Image image;


  ListWidget2({this.country,this.casesNumber, this.image,this.recoverdNumber,this.deathsNumber});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  height: 50.0,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset('icons/flags/png/$country.png', package: 'country_icons'),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                  ),
                  child: Center(
                    child: Text(
                        casesNumber,
                      style: kTextStyle3,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.greenAccent,
                  ),
                  child: Center(
                    child: Text(
                      recoverdNumber,
                      style: kTextStyle3,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  height: 50.0,
                  width: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                  ),
                  child: Center(
                    child: Text(
                      deathsNumber,
                      style: kTextStyle3,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
