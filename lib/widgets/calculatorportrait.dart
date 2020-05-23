import 'package:arithmetic_calculator/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class CalculatePortrait extends StatefulWidget {
  final String str;
  final String title;
  CalculatePortrait({Key key, @required this.title, @required this.str})
      : super(key: key);
  @override
  _CalculatePortraitState createState() => _CalculatePortraitState(this.str);
}

class _CalculatePortraitState extends State<CalculatePortrait> {
  String _str;
  _CalculatePortraitState(this._str);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 15, 15, 30),
                child: Text(
                  _str,
                  textScaleFactor: 3.0,
                  style: TextStyle(fontSize: 20),
                  textAlign: TextAlign.right,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('C', () {}, 9, Colors.black12),
                CustomButton('DEL', () {}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('7', () {}, 3, Colors.black12),
                CustomButton('8', () {}, 3, Colors.black12),
                CustomButton('9', () {}, 3, Colors.black12),
                CustomButton('+', () {}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('4', () {}, 3, Colors.black12),
                CustomButton('5', () {}, 3, Colors.black12),
                CustomButton('6', () {}, 3, Colors.black12),
                CustomButton('-', () {}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('1', () {}, 3, Colors.black12),
                CustomButton('2', () {}, 3, Colors.black12),
                CustomButton('3', () {}, 3, Colors.black12),
                CustomButton('x', () {}, 3, Colors.black12),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('0', () {}, 3, Colors.black12),
                CustomButton('.', () {}, 3, Colors.black12),
                CustomButton('÷', () {}, 3, Colors.black12),
                CustomButton('=', () {}, 3, Colors.black12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
