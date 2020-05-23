import 'package:arithmetic_calculator/widgets/calculatorportrait.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      home: Calculator(title: 'Flutter Calculator'),
    );
  }
}

class Calculator extends StatefulWidget {
  Calculator({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String _str;
  @override
  void initState() {
    super.initState();
    _str = '0';
  }

  Widget build(BuildContext context) {
    final mediaquery = MediaQuery.of(context);
    // Checking media query orientation
    if (mediaquery.orientation == Orientation.landscape) {
      return Container();
    }
    return CalculatePortrait(
      key: widget.key,
      title: widget.title,
      str: this._str,
    );
  }
}
