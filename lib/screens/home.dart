import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finance_assistant/components/chart.dart';
import 'package:fl_chart/fl_chart.dart';

class home_screen extends StatelessWidget {
  // const home_screen({Key? key}) : super(key: key);
  static String id = "home_screen";

  final List<Widget> transactionsList = [
    Padding(
      padding: const EdgeInsets.only(top: 10, right: 35.0),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Color.fromRGBO(232, 255, 253, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  'images/uber_icon.png', // Replace with your local image file path
                  width: 54,
                  height: 54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:6,top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Uber', style: TextStyle(fontWeight: FontWeight.w500),),
                  Text('Today, 7:18', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black45),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 175.0),
              child: Text('-\$17', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            ),
          ],
        ),
      ),
    ),


    Padding(
      padding: const EdgeInsets.only(top: 10, right: 35.0),
      child: Container(
        height: 75,
        decoration: BoxDecoration(
          color: Color.fromRGBO(232, 255, 253, 1),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  'images/uber_icon.png', // Replace with your local image file path
                  width: 54,
                  height: 54,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:6,top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CIB', style: TextStyle(fontWeight: FontWeight.w500),),
                  Text('Today, 7:18', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 12, color: Colors.black45),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 175.0),
              child: Text('-\$17', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),),
            ),
          ],
        ),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color.fromRGBO(0, 166, 255, 1),
        currentIndex: 1, // Initial index of the selected page
        onTap: (index) {},
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.timeline),
            label: 'Timeline',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Welcome',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Reports',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 25.0, right: 25),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: Colors.black54,
                          size: 38,
                        ),
                        CircleAvatar(
                          radius: 24,
                          backgroundImage: AssetImage('images/person_icon.jpg'),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Hi Mohamed',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 33,
                    ),
                  ),
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 25.0, top: 20),
                        child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color.fromRGBO(232, 255, 253, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                                bottomRight: Radius.circular(30),
                              ),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: Container(
                                    width: 50,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Icon(
                                          Icons.wallet,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 26.0, left: 20),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Balance',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 15,
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 5.0),
                                        child: Text(
                                          '\$13,246.75',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 230.0, top: 4),
                        child: Container(
                          height: 115,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(255, 141, 99, 1),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "**** 5632",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "Exp",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      "09/25",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            //   child: SizedBox(
            //     height: 1,
            //     child: Divider(
            //       color: Colors.black26,
            //     ),
            //   ),
            // ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                            'images/credit_card.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Container(
                          width: 80,
                          height: 80,
                          child: Image.asset(
                            'images/credit_card.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 3.0),
                          child: Container(
                            color: Colors.grey.withOpacity(0.3),
                            width: 75,
                            height: 46,
                            child: Center(
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    LineChartSample2(),
                    Padding(
                      padding: const EdgeInsets.only(right: 35.0, bottom: 10),
                      child: Container(
                        height: 40,

                        //color:  Color.fromRGBO(232, 255, 253, 1),
                        color: Color.fromARGB(90, 222, 222, 222),
                        child: Row(
                          children: [
                            Icon(Icons.info_outline, color: Colors.black,),
                            Padding(
                              padding: const EdgeInsets.only(top:5, left: 28.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("You spent 76% more than your average "),
                                  Text("last month!"),
                                ],
                              ),
                            ),

                          ],
                        ),

                      ),
                    ),
                    Text(
                      "Latest",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black54),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: TextStyle(
                              fontSize: 37, fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 7, right: 35.0),
                          child: Icon(
                            Icons.arrow_outward,
                            color: Colors.black,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 125,
                      child: ListView.builder(itemCount: transactionsList.length,
                        itemBuilder: (context, index){
                          return transactionsList[index];
                        },),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
