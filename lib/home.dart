import 'dart:async';

import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  var time = DateTime.now();
  String yearStart = "D";
  String monthStart = "A";
  String dayStart = "Y";
  String clocks = " ";
  bool clock = true;
  String hour = "0", minute = "0", second = "0";
  int tmpday = 0;
  @override
  void dayInMonth(){
    if(time.month - 1 == 1 || time.month - 1 == 3 || time.month - 1 == 5 || time.month - 1 == 7 || time.month - 1 == 8 || time.month - 1 == 10 || time.month - 1 == 12){
      tmpday = 31;
    }else if(time.month - 1 == 2){
      tmpday = 28;
    }else{
      tmpday = 30;
    }
  }
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(time.second != DateTime.now().second){
        setState(() {
          time = DateTime.now();
        hour = time.hour.toString();
        minute = time.minute.toString();
        second = time.second.toString();
        });
      }
     });
     dayInMonth();
  }
  void Time() {
    setState(() {
      if (clock == true) {
        time = DateTime.now();
        if((time.day - 2) >= 0){
          yearStart = (time.year - 2023).toString();
        monthStart = (time.month - 6).toString();
        dayStart = (time.day - 2).toString();
        }
        else{
        yearStart = (time.year - 2023).toString();
        monthStart = (time.month - 6-1).toString();
        dayStart = (tmpday - 2).toString();
        }
        clock = false;
      } else {
        yearStart = "D";
        monthStart = "A";
        dayStart = "Y";
        clock = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              child: Image(
                  height: double.infinity,
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover), // color: Colors.amber,
            ),
            Column(
              children: [
                Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                             Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: Text(
                                "$yearStart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFfd629d),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                ),
                          ),
                          Text(
                                "  :  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                          Container(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: Text(
                                "$monthStart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFfd629d),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(10),
                               
                                ),
                          ),
                          Text(
                                "  :  ",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                          Container(
                            height: 80,
                            width: 80,
                            child: Center(
                              child: Text(
                                "$dayStart",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFfd629d),
                                border:
                                    Border.all(color: Colors.white, width: 2),
                                borderRadius: BorderRadius.circular(10),
                                
                                ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("# 02/06/2023",style: TextStyle(color: Colors.white),),
                          SizedBox(
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 100,
                            child: Center(
                              child: Text("${hour}:${minute}:${second}",
                          style: 
                          // Theme.of(context).textTheme.headline1?.copyWith(
                          //   color: Color(0xFFfd629d),
                          //   fontSize: 20,
                          //   ),
                          TextStyle(color: Color(0xFFfd629d)
                          ,
                          fontSize: 20)
                          ),
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFebf3fe),
                                border:
                                    Border.all(color: Color(0xFFfd629d), width: 2),
                                borderRadius: BorderRadius.circular(10),
                                
                                ),
                          )
                          
                        ],
                      )
                          ],
                      ),
                    )),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Stack(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 30, left: 10),
                                  child: Transform(
                                    transform: Matrix4.rotationY(
                                        3.14159), // Flips the image horizontally
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 90,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/giphy (1).gif'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 90),
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Toan.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 45,
                                      child: Row(
                                        children: [
                                          Icon(Icons.male,color: Colors.white,),
                                          Text("${(time.year - 2005).toString()}",style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Colors.blue,
                                        border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    Text(
                                      "Toản iuuu em",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                Time();
                              },
                              child: Ink(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 30.0,
                                      offset: Offset(10, 10),
                                      color: Colors.transparent,
                                    ),
                                  ],
                                ),
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/icon.webp'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Stack(children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 30, left: 5),
                                  child: Transform(
                                    transform: Matrix4.rotationY(
                                        3.14159), // Flips the image horizontally
                                    alignment: Alignment.center,
                                    child: Container(
                                      height: 90,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/giphy (2).gif'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 90),
                                  child: Container(
                                    height: 80,
                                    width: 80,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/images/Ngoc.jpg'),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ]),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 45,
                                      child: Row(
                                        children: [
                                          Icon(Icons.female,color: Colors.white,),
                                          Text("${(time.year - 2005).toString()}",style: TextStyle(color: Colors.white),),
                                        ],
                                      ),
                                      decoration: BoxDecoration(
                                        color: Color(0xFFfd629d),
                                        border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8),
                                      ),
                                    ),
                                    Text(
                                      "Ngọc đáng iuuuu",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 15),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
