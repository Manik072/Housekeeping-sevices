import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ndpage()
  ));
  
}

class ndpage extends StatefulWidget {
  const ndpage({Key? key}) : super(key: key);

  @override
  _ndpageState createState() => _ndpageState();
}

class _ndpageState extends State<ndpage> {
  String noob = "initial";
  String selectedFrequency = "monthly";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: Text('Your Plan',
          style: TextStyle(
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
              width: 1200,
              height: 100,
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                child: Column(
                  children: [
                    Text('Select Your Plan',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        fontSize: 25,
                      ),
                    ),
                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 0, 100, 0),
                              child: InkWell(
                                onTap: () {
                                  changeCleaningtype('initial');
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 2,
                                      )
                                  ),
                                  child: Image.asset('img1.png',
                                    height: 130,
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: ()
                              {changeCleaningtype('upkeep');},
                              child: Container(

                                decoration: BoxDecoration(
                                    border: Border.all(
                                      width: 2,
                                    )
                                ),
                                child: Image.asset('img2.png',
                                  height: 130,
                                  width: 130,
                                ),
                              ),
                            ),
                            SizedBox(height: 20),

                          ],

                        ),

                      ),

                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(80, 10, 0, 0),
                          child: Text('Initial Cleaning',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            )
                            ,),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(125, 10, 0, 0),
                          child: Text('Upkeep Cleaning',
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {changeCleaningtype('upkeep');},
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(100, 20, 0, 0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: (noob == "initial") ? Icon(Icons.check_circle) : Container(),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(200, 20, 0, 0),
                            child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.red,
                              ),
                              child: (noob == "upkeep") ? Icon(Icons.check_circle) : Container(),
                            ),
                          ),
                        ],

                      ),
                    ),
                    SizedBox(height: 30,),
                    Text("Selected Frequecy", style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                    SizedBox(height: 20,),
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
                  ],

                ),

              ),


            ),

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