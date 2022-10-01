import 'package:flutter/material.dart';
import 'package:lab_10/models/Quiz2.dart';
import './models/functions.dart';
import 'models/Quiz.dart';
import 'models/Quiz2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
          "Quiz App",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.brown.shade900,
            fontFamily: "JosefinSans-Italic",
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("images/1.jpg"),
          ),
        ),
        child: Center(
          child: GestureDetector(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      backgroundColor: Color.fromARGB(255, 204, 157, 86),
                      content: Container(
                        width: 200,
                        height: 200,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return Quiz();
                                  }));
                                },
                                icon: Icon(Icons.people),
                                label: Text("Go to Quiz page"),
                                style: ElevatedButton.styleFrom(
                                  fixedSize: Size(200, 50),
                                  backgroundColor: Colors.brown.shade900,
                                ),
                              ),
                              SizedBox(
                                height: 30,
                              ),
                              ElevatedButton.icon(
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(200, 50),
                                    backgroundColor: Colors.brown.shade900,
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                      return Quiz2();
                                    }));
                                  },
                                  icon: Icon(Icons.people),
                                  label: Text("Go to Quiz 2 page")),
                            ],
                          ),
                        ),
                      ),
                    );
                  });
            },
            child: Container(
              height: 100,
              width: 700,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.brown.shade900,
              ),
              child: SizedBox(
                height: 250,
                width: 200,
                child: Center(
                  child: Text(
                    "Do you think you are good in english press me if yes:)",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "ShadowsIntoLight",
                      color: Colors.green,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
