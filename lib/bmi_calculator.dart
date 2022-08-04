import 'dart:math';

class BMICalc {
  BMICalc({required this.height, required this.weight, required this.age});

  final int height;
  final int weight;
  final int age;

  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have a higher than normal body weight. Try to exercise more';
    } else if (_bmi > 18.5) {
      return 'You have a healthy body weight. Good Job!';
    } else {
      return 'You have a lower body weight. Eat more and gain weight.';
    }
  }
}
