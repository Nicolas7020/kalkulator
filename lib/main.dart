import 'package:flutter/material.dart';

void main(){

  runApp(BootcampApp());
}

class BootcampApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Kalkulator",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String num1 = '';
  String num2 = '';
  String ope = '';
  double res = 0;

  void inputnum(String num) {
    if (res != 0){
      clear();
    }
    if (ope != ''){
      num2 += num;
    } else{
      num1 += num;
    }
    setState(() {

    });
  }

  void operator(String operator){
    ope = operator;
    setState(() {

    });
  }

  void result() {
    setState(() {
      switch(ope){
        case '/': {
          res = double.parse(num1) / double.parse(num2);
          break;
        }
        case '*': {
          res = (double.parse(num1) * double.parse(num2)) as double;
          break;
        }
        case '+': {
          res = (double.parse(num1) + double.parse(num2)) as double;
          break;
        }
        case '-': {
          res = (double.parse(num1) - double.parse(num2)) as double;
          break;
        }
      }
    });
  }

  void clear(){
    setState(() {
      num1 = '';
      num2 = '';
      ope = '';
      res = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[800],
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 0),
          child: Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 180,
                      width: MediaQuery.of(context).size.width,
                      color: Colors.grey[900],
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30, right: 15),
                        child: Text(
                          "${res == 0 ? num1 : ''} ${res == 0 ? ope : ''} ${res == 0 ? num2 : ''} ${res == 0 ? '': res}",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,

                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20, bottom:7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          clear();
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "C",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[600],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Container(
                        height: 85,
                        width: 85,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "<-",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Container(
                        height: 85,
                        width: 85,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "%",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          operator("/");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "÷",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:7 ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          inputnum("7");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "7",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          inputnum("8");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "8",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          inputnum("9");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "9",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          operator("*");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "X",
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          inputnum("4");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "4",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          inputnum("5");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "5",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          inputnum("6");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "6",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          operator("-");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "-",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom:7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          inputnum("1");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "1",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          inputnum("2");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "2",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          inputnum("3");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "3",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          operator("+");
                        },
                        child: Container(
                          height: 85,
                          width: 85,
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Text(
                              "+",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.lightBlue[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],

                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        inputnum("0");
                      },
                      child: Container(
                        height: 85,
                        width: 175,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "0",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Container(
                      height: 85,
                      width: 85,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Text(
                          ".",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        result();
                      },
                      child: Container(
                        height: 85,
                        width: 85,
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Text(
                            "=",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                            ),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.lightBlue[800],
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],

                ),
              ],
            ),

          ),
        ),
      ),

    );
  }
}
