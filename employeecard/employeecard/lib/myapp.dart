import 'package:employeecard/cardclass.dart';
import 'package:employeecard/carddetails.dart';
import 'package:employeecard/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var index = 0;

  cardCount() {
    setState(() {
      index += 1;
    });
  }

  List<CardDetails> carddetails = [
    CardDetails(
      image: "./images/images.jpeg",
      name: "Employee1",
      designation: "Flutter Developer",
      email: "abc@gmail.com",
    ),
    CardDetails(
      image: "./images/images2.jpeg",
      name: "Employee2",
      designation: "Java Developer",
      email: "bcd@gmail.com",
    ),
    CardDetails(
      image: "./images/images3.jpeg",
      name: "Employee3",
      designation: "React Developer",
      email: "cde@gmail.com",
    ),
    CardDetails(
      image: "./images/images4.jpeg",
      name: "Employee4",
      designation: "Angular Developer",
      email: "def@gmail.com",
    )
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: Text(
            "Card Details".toUpperCase(),
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.amber[500],
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: cardDis(),
      ),
    );
  }

  Widget cardDis() {
    return Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        index<carddetails.length?carddisplay(
          cd: carddetails[index]): DecoratedBox(
            decoration:BoxDecoration(
              border: Border.all(color: Colors.red, width: 10.0),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              shape: BoxShape.rectangle,
              backgroundBlendMode: BlendMode.darken,
              boxShadow: [BoxShadow(color: Colors.yellow), BoxShadow(color: Colors.green)],
              color: Colors.red[200]),
            child:  Center(
              child:  Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "card not found!!!...", style: TextStyle(
                      color: Colors.red, 
                      fontSize: 50, 
                      fontStyle:FontStyle.italic,
                       fontFamily: "RobotoMono",
                       //backgroundColor: Colors.green
                       ),
                       textAlign: TextAlign.center,
                  ),
                  Icon(Icons.airplanemode_active, color: Colors.red[900],),

                ],
              ),
            ),
          ),
        SizedBox(
          height: 20,
        ),
        ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.green)),
          onPressed: () {
          cardCount();
           // carddetails.elementAt(index);
          },
          child: Text("Next"),
        ),
      ]);
  }
}