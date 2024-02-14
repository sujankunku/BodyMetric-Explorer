import 'dart:math';

class ResultsBrain {
  int height;
  int weight;
  ResultsBrain({required this.height, required this.weight});
  double? _bmi;
  String BmiCalculator() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String ResultText() {
    if (_bmi! >= 25) {
      return "OverWeight";
    } else if (_bmi! >= 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String ResultText2() {
    if (_bmi! >= 25) {
      return "You have a higher than normal weight. Try to exercise more.";
    } else if (_bmi! >= 18.5) {
      return "You have normal body Weight. Good Job!";
    } else {
      return "You have a lower weight than normal weight. You can eat a bit more.";
    }
  }
}
