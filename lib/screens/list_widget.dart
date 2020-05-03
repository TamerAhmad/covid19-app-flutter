import 'package:flutter/material.dart';
import 'package:covid19flutter/utilities/constants.dart';

class ListWidget extends StatelessWidget {
  final String textNumber;
  final String textState;
  final Image image;

  ListWidget({this.textNumber, this.image,this.textState});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(10.0),
        width: 200.0,
        height: 150.0,
        decoration: BoxDecoration(
          color: Colors.grey.shade600,
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 17.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: image),
                Expanded(
                  child: Text(
                    textNumber,
                    style: kTextStyle,
                  ),
                ),
                Expanded(
                  child: Text(
                    textState,
                    style: kTextStyle4,
                  ),
                ),
              ],
            ),
        ),
      ),
    );
  }
}
