import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi;
  String _result;
  String _description;

  CalculatorBrain({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (_bmi >= 25) {
      _result = 'Overweight';
      return _result;
    } else if (_bmi > 18.5) {
      _result = 'Normal';
      return _result;
    } else {
      _result = 'Underweight';
      return _result;
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      _description =
          'You have a higher than normal body weight. Try to exercise more!';
      return _description;
    } else if (_bmi > 18.5) {
      _description = 'You have a normal body weight. Good job!';
      return _description;
    } else {
      _description =
          'You have a lower than normal body weight. You can eat a bit more!';
      return _description;
    }
  }
}
