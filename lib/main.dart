import 'dart:ui';

import 'package:flutter/material.dart';
void main(){
runApp(MaterialApp(
  home: next(),
  debugShowCheckedModeBanner: false,
));
}

class next extends StatefulWidget {
  const next({Key? key}) : super(key: key);

  @override
  _nextState createState() => _nextState();
}

class _nextState extends State<next> {
  String noob = 'initial';
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        title: Text('Your Plan',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Center(
                      child: Text('Select Your Plan',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 20,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            changeCleaningtype('initial');
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                                child: Container(
                                  child: Image.asset(
                                    'assets/img1.png', height: 150,
                                    width: 150,),
                                ),
                              )
                            ],
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            changeCleaningtype('upkeep');
                          },
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                                child: Image.asset('assets/img2.png',
                                  height: 150,
                                  width: 150,),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(

                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                          child: Text('Initial Cleaning',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(110, 0, 0, 0),
                          child: Text('Upkeep Cleaning',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),

                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(70, 20, 0, 40),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: (noob == "initial") ? Icon(
                                  Icons.check_circle) : Container(),

                            ),
                          ),
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(
                                  200, 10, 0, 30),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: (noob == "upkeep") ? Icon(
                                    Icons.check_circle) : Container(),
                              ),
                            ),
                          ),

                        ],

                      ),

                    ),
SizedBox(height: 20),
                    Text('Selected Frequency',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ) ,
                    ),
                    SizedBox(height: 20),
                          Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                   children: [
                                    InkWell(
                                      onTap: (){changeFrequency("weekly");},
                                         child: Container(
                                            height: 50,
                                            width: 110,
                                                decoration: (selectedFrequency == "weekly") ? BoxDecoration(
                                                  color: Colors.pink,
                                                         borderRadius: BorderRadius.all(Radius.circular(10))
                                                        ) : BoxDecoration(
                                          border: Border.all(color: Colors.black.withOpacity(0.3)),
                                             borderRadius: BorderRadius.all(Radius.circular(10))
                                              ),
                                           child: Center(
                                         child: Text("Weekly", style: TextStyle(
                                           fontSize: 16,
                                         fontWeight: FontWeight.w500,
                                               color: (selectedFrequency == "weekly") ? Colors.white : Colors.black
                                             ),),
                                               ),
                                                   ),
                                                      ),
                                     InkWell(
                                       onTap: (){changeFrequency("biweekly");},
                                       child: Container(
                                         height: 50,
                                         width: 110,
                                         decoration: (selectedFrequency == "biweekly") ? BoxDecoration(
                                             color: Colors.pink,
                                             borderRadius: BorderRadius.all(Radius.circular(10))
                                         ) : BoxDecoration(
                                             border: Border.all(color: Colors.black.withOpacity(0.3)),
                                             borderRadius: BorderRadius.all(Radius.circular(10))
                                         ),
                                         child: Center(
                                           child: Text("Bi-Weekly", style: TextStyle(
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500,
                                               color: (selectedFrequency == "biweekly") ? Colors.white : Colors.black
                                           ),),
                                         ),
                                       ),
                                     ),


                                     InkWell(
                                       onTap: (){changeFrequency("monthly");},
                                       child: Container(
                                         height: 50,
                                         width: 110,
                                         decoration: (selectedFrequency == "monthly") ? BoxDecoration(
                                             color: Colors.pink,
                                             borderRadius: BorderRadius.all(Radius.circular(10))
                                         ) : BoxDecoration(
                                             border: Border.all(color: Colors.black.withOpacity(0.3)),
                                             borderRadius: BorderRadius.all(Radius.circular(10))
                                         ),
                                         child: Center(
                                           child: Text("Monthly", style: TextStyle(
                                               fontSize: 16,
                                               fontWeight: FontWeight.w500,
                                               color: (selectedFrequency == "monthly") ? Colors.white : Colors.black
                                           ),),
                                         ),
                                       ),
                                     )

                  ],

                ),

              ]
    ),
          )
          ),
        ],
      ),
    );
  }

  void changeCleaningtype(String type) {
    noob = type;
    setState(() {

    });
  }

void changeFrequency(String frequency)
{
  selectedFrequency = frequency;
  setState(() {

  });
}
}
