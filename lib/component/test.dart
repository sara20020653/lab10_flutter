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
  List answers=[];
  String? ans_1;
  String? ans_2;
  String? ans_3;
  String? correctAnswer;

  Key myKey = ObjectKey("");

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          alignment: Alignment.center,
          height: 120,
          // decoration: BoxDecoration(
          // image: DecorationImage(
          //     fit: BoxFit.fitWidth,
          // image: NetworkImage(
          //     "https://i.pinimg.com/originals/a6/88/66/a68866bc1252474fa15ed84b149b34b8.jpg"))),

          child: Text(
            "$Ques",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.orange),
          ),
        ),
        Divider(
          height: 50,
        ),

        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Center(
                          child: Text(
                        "Wrong answer!",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      )),
                    );
                  });
            },
            child: Text("$ans_1")),
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Center(
                          child: Text(
                        "Wrong answer!",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      )),
                    );
                  });
            },
            child: Text("$ans_2")),
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Center(
                          child: Text(
                        "correct answer!",
                        style: TextStyle(fontSize: 30, color: Colors.green),
                      )),
                    );
                  });
            },
            child: Text("$correctAnswer")),
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      content: Center(
                          child: Text(
                        "Wrong answer!",
                        style: TextStyle(fontSize: 30, color: Colors.red),
                      )),
                    );
                  });
            },
            child: Text("$ans_3")),

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
    );
  }
}
