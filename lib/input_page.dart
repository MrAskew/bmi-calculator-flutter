import 'package:flutter/material.dart';

const int colorOfReusableCards = 0xFF1D1E33;
const double heightOfBottomContainer = 80.0;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(Color(colorOfReusableCards))),
                Expanded(child: ReusableCard(Color(colorOfReusableCards))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(Color(colorOfReusableCards))),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(Color(colorOfReusableCards)),
                ),
                Expanded(child: ReusableCard(Color(colorOfReusableCards))),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 15.0),
            color: Colors.pink,
            width: double.infinity,
            height: heightOfBottomContainer,
          ),
        ],
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  Color color;

  ReusableCard(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
