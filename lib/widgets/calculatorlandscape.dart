import 'package:arithmetic_calculator/calculate.dart';
import 'package:arithmetic_calculator/widgets/custombutton.dart';
import 'package:flutter/material.dart';

class CalculateLandscape extends StatefulWidget {
  final String str;
  final String title;
  CalculateLandscape({Key key, @required this.title, @required this.str})
      : super(key: key);
  @override
  _CalculateLandscapeState createState() => _CalculateLandscapeState(this.str);
}

class _CalculateLandscapeState extends State<CalculateLandscape> {
  String _str;
  _CalculateLandscapeState(this._str);

  // Private methods
  void _update(String val) {
    Compute.add(val);
    setState(() {
      this._str = Compute.str;
    });
  }

  void _clear() {
    Compute.clear();
    setState(() {
      this._str = Compute.str;
    });
  }

  void _delete() {
    Compute.delete();
    setState(() {
      this._str = Compute.str;
    });
  }

  void compute() {
    if (Compute.str.compareTo('0') != 0) {
      setState(() {
        this._str = Compute.computer();
        Compute.str = this._str;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      this._str = Compute.str;
    });
  }

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
                CustomButton('7', () {
                  _update('7');
                }, 3, Colors.black12),
                CustomButton('8', () {
                  _update('8');
                }, 3, Colors.black12),
                CustomButton('9', () {
                  _update('9');
                }, 3, Colors.black12),
                CustomButton('C', () {
                  _clear();
                }, 3, Colors.black12),
                CustomButton('DEL', () {
                  _delete();
                }, 3, Colors.black12),
                CustomButton('.', () {
                  _update('.');
                }, 3, Colors.black12),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('4', () {
                  _update('4');
                }, 3, Colors.black12),
                CustomButton('5', () {
                  _update('5');
                }, 3, Colors.black12),
                CustomButton('6', () {
                  _update('6');
                }, 3, Colors.black12),
                CustomButton('+', () {
                  _update('+');
                }, 3, Colors.black12),
                CustomButton('-', () {
                  _update('-');
                }, 3, Colors.black12),
                CustomButton('x', () {
                  _update('x');
                }, 3, Colors.black12),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                CustomButton('1', () {
                  _update('1');
                }, 3, Colors.black12),
                CustomButton('2', () {
                  _update('2');
                }, 3, Colors.black12),
                CustomButton('3', () {
                  _update('3');
                }, 3, Colors.black12),
                CustomButton('0', () {
                  _update('0');
                }, 3, Colors.black12),
                CustomButton('=', () {
                  compute();
                }, 3, Colors.black12),
                CustomButton('÷', () {
                  _update('÷');
                }, 3, Colors.black12),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
