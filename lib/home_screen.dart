import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_calculator/my_buttons.dart';
import 'calculator_provider.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    print('f');
    final countProvider =
        Provider.of<CalculatorProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator App'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child:
              Column(
                children: [
                  const SizedBox(height: 50,),
            Consumer<CalculatorProvider>(builder: (context, value, child) {
              print(child);
              return Container(
                height: 100,
                width: 400,
                decoration: const BoxDecoration(
                    color: Colors.deepPurple,
                    borderRadius: BorderRadius.all(Radius.circular(2))
                ),
                child: Column(
                  children: [
                    const SizedBox(height: 2,),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 3),
                        child: Text(
                          value.userInput.toString(),
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                              fontFamily: 'Bold'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Align(
                        alignment: Alignment.bottomRight,
                        child: Text(
                          value.answer.toString(),
                          style: const TextStyle(
                              fontSize: 25,
                              color: Colors.green,
                              fontFamily: 'Bold'),
                        )),
                  ],
                ),
              );  }),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: 'AC',
                          color: Colors.red,
                          onpress: () {
                            // countProvider.setUserInput('AC');
                            countProvider.Ac();

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '+/-',
                          color: const Color(0xffffa00a),
                          onpress: () {
                            countProvider.setUserInput('+/-');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '%',
                          color: const Color(0xffffa00a),

                          onpress: () {
                            countProvider.setUserInput('%');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '/',
                          color: const Color(0xffffa00a),

                          onpress: () {
                            countProvider.setUserInput('/');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '7',
                          onpress: () {
                            countProvider.setUserInput('7');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '8',
                          onpress: () {
                            countProvider.setUserInput('8');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '9',
                          onpress: () {
                            countProvider.setUserInput('9');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: 'X',
                          color: const Color(0xffffa00a),
                          onpress: () {
                            countProvider.setUserInput('*');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '4',
                          onpress: () {
                            countProvider.setUserInput('4');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '5',
                          onpress: () {
                            countProvider.setUserInput('5');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '6',
                          onpress: () {
                            countProvider.setUserInput('6');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '-',
                          color: const Color(0xffffa00a),
                          onpress: () {
                            countProvider.setUserInput('-');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '1',
                          onpress: () {
                            countProvider.setUserInput('1');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '2',
                          onpress: () {
                            countProvider.setUserInput('2');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '3',
                          onpress: () {
                            countProvider.setUserInput('3');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '+',
                          color: const Color(0xffffa00a),
                          onpress: () {
                            countProvider.setUserInput('+');

                          }),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '0',
                          onpress: () {
                              countProvider.setUserInput('0');
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '.',
                          onpress: () {

                            countProvider.setUserInput('.');
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: 'DEL',
                          color: Colors.red,
                          onpress: () {
                            // countProvider.setUserInput('DEL');
                            countProvider.Delete();
                          }),
                      const SizedBox(
                        width: 10,
                      ),
                      MyButton(
                          title: '=',
                          color: const Color(0xffffa00a),
                          onpress: () {
                            String finaluserInput = countProvider.userInput;

                            Parser p = Parser();
                            Expression expression = p.parse(finaluserInput);
                            ContextModel contextModel = ContextModel();
                            double eval = expression.evaluate(EvaluationType.REAL, contextModel);
                            countProvider.setAnswer(eval.toString());


                          }),
                      const SizedBox(
                        width: 10,
                      ),
                    ],
                  )
                ],
              )

          ),
        ],
      )
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     countProvider.setCount();
      //   },
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
