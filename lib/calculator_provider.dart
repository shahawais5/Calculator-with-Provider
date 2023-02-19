import 'package:flutter/foundation.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorProvider with ChangeNotifier{

  int _count=0;
  int get count=>_count;
  var userInput = '';
  var answer = '';


  void setUserInput(var value){
    userInput+=value;
    notifyListeners();
  }
  void setAnswer(var value){
    answer=value;
    notifyListeners();
  }
void Delete(){
    if(userInput.length>=1){
    userInput = userInput.substring(
        0, userInput.length - 1);
    notifyListeners();}
}

   void Ac(){
    userInput = '';
    answer = '';
    notifyListeners();
}

  void setCount(){
    _count++;
    notifyListeners();
  }

  void equalpress() {
    String finaluserInput = userInput;
    finaluserInput = userInput.replaceAll('x', '*');
    Parser p = Parser();
    Expression expression = p.parse(finaluserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
    notifyListeners();
  }
}

