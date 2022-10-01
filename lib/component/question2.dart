import 'package:flutter/material.dart';
import 'package:lab_10/component/question.dart';

class Question extends StatelessWidget {
  Question(
      {required this.Ques,
      required this.ans_1,
      required this.ans_2,
      required this.ans_3,
      required this.correctAnswer});

  String? Ques;
  String? ans_1;
  String? ans_2;
  String? ans_3;
  String? correctAnswer;

  Key myKey = ObjectKey("");

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage("images/2.jpg"),
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: 40),
          Container(
            alignment: Alignment.center,
            height: 100,
            width: 1000,
            decoration: BoxDecoration(
              color: Colors.brown.shade900,
              borderRadius: BorderRadius.circular(200),
            ),
            child: Text(
              "$Ques",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: Colors.green.shade700,
                  fontFamily: "ShadowsIntoLight"),
            ),
          ),
          Divider(
            height: 50,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Color.fromARGB(255, 204, 157, 86),
                          content: Container(
                            width: 200,
                            height: 200,
                            color: Colors.red,
                            child: Center(
                                child: Text(
                              "Wrong answer!",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: "ShadowsIntoLight",
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      });
                },
                child: Text(
                  "$ans_1",
                  style: TextStyle(
                    fontFamily: "JosefinSans-Italic",
                    color: Colors.brown.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 70),
                  backgroundColor: Colors.amber,
                ),
              ),
              SizedBox(
                width: 250,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Color.fromARGB(255, 204, 157, 86),
                          content: Container(
                            width: 200,
                            height: 200,
                            color: Colors.red,
                            child: Center(
                                child: Text(
                              "Wrong answer!",
                              style: TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontFamily: "ShadowsIntoLight",
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        );
                      });
                },
                child: Text(
                  "$ans_2",
                  style: TextStyle(
                    fontFamily: "JosefinSans-Italic",
                    color: Colors.brown.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 70),
                  backgroundColor: Colors.amber,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Color.fromARGB(255, 204, 157, 86),
                          content: Container(
                            width: 200,
                            height: 200,
                            color: Colors.green,
                            child: Center(
                                child: Text(
                              "correct answer!",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: "ShadowsIntoLight",
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        );
                      });
                },
                child: Text(
                  "$correctAnswer",
                  style: TextStyle(
                    fontFamily: "JosefinSans-Italic",
                    color: Colors.brown.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 70),
                  backgroundColor: Colors.amber,
                ),
              ),
              SizedBox(
                width: 250,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Color.fromARGB(255, 204, 157, 86),
                          content: Container(
                            width: 200,
                            height: 200,
                            color: Colors.red,
                            child: Center(
                                child: Text(
                              "Wrong answer!",
                              style: TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontFamily: "ShadowsIntoLight",
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                        );
                      });
                },
                child: Text(
                  "$ans_3",
                  style: TextStyle(
                    fontFamily: "JosefinSans-Italic",
                    color: Colors.brown.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(150, 70),
                  backgroundColor: Colors.amber,
                ),
              ),
            ],
          ),

          // Padding(
          //   padding: const EdgeInsets.all(20),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       GestureDetector(
          //         onTap: () {
          //           if (ObjectKey == "No") {
          //             showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return AlertDialog(
          //                     content: Center(
          //                         child: Text(
          //                       "Wrong answer!",
          //                       style: TextStyle(fontSize: 30, color: Colors.red),
          //                     )),
          //                   );
          //                 });
          //           } else {
          //             showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return AlertDialog(
          //                     content: Center(
          //                         child: Text(
          //                       "correct answer!",
          //                       style:
          //                           TextStyle(fontSize: 30, color: Colors.green),
          //                     )),
          //                   );
          //                 });
          //           }
          //         },
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           children: [
          //             Container(

          //               color: Colors.blue,
          //               height: 50,
          //               width: 100,
          //               child: Text(
          //                 "$ans_1",
          //                 key: ObjectKey("No"),
          //                 style: TextStyle(fontSize: 20, color: Colors.white),
          //               ),
          //             ),
          //             Divider(
          //               height: 20,
          //             ),
          //             Container(
          //               color: Colors.blue,
          //               height: 50,
          //               width: 100,
          //               child: Text(
          //                 "$ans_2",
          //                 key: ObjectKey("No"),
          //                 style: TextStyle(fontSize: 20, color: Colors.white),
          //               ),
          //             ),
          //             Divider(
          //               height: 20,
          //             ),
          //             Container(
          //               color: Colors.blue,
          //               height: 50,
          //               width: 100,
          //               child: Text(
          //                 "$ans_3",
          //                 key: ObjectKey("No"),
          //                 style: TextStyle(fontSize: 20, color: Colors.white),
          //               ),
          //             ),
          //             Divider(
          //               height: 20,
          //             ),
          //             Container(
          //               color: Colors.blue,
          //               height: 50,
          //               width: 100,
          //               child: Text(
          //                 "$correctAnswer",
          //                 key: ObjectKey("yes"),
          //                 style: TextStyle(fontSize: 20, color: Colors.white),
          //               ),
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // )
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Row(
          //     children: [
          //       GestureDetector(
          //         onTap: () {
          //           showDialog(
          //               context: context,
          //               builder: (context) {
          //                 return AlertDialog(
          //                   content: Center(
          //                     child: Text("good job"),
          //                   ),
          //                 );
          //               });
          //         },
          //         child: GestureDetector(
          //           onTap: () {
          //             showDialog(
          //                 context: context,
          //                 builder: (context) {
          //                   return AlertDialog(
          //                     content: Center(
          //                       child: Text("try again"),
          //                     ),
          //                   );
          //                 });
          //           },
          //           child: Text(
          //             "$correctAnswer",
          //             style: TextStyle(fontSize: 18),
          //           ),
          //         ),
          //       ),
          //       SizedBox(
          //         width: 80,
          //       ),
          //       Text("$ans_1", style: TextStyle(fontSize: 18))
          //     ],
          //   ),
          // ),
          // SizedBox(
          //   height: 40,
          // ),
          // Padding(
          //   padding: const EdgeInsets.all(20.0),
          //   child: Row(
          //     children: [
          //       Text("$ans_2", style: TextStyle(fontSize: 18)),
          //       SizedBox(
          //         width: 70,
          //       ),
          //       Text("$ans_3", style: TextStyle(fontSize: 18)),
          //       SizedBox(
          //         width: 70,
          //       ),
          //       Text("$ans_4", style: TextStyle(fontSize: 18))
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
