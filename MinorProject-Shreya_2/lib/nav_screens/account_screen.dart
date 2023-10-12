import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../components/category_progress_bar.dart';

class AccountScreen extends StatelessWidget {
  Color cardColor = const Color(0xFF1F283E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'My Account',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: SafeArea(
              child: Container(
                  margin: const EdgeInsets.only(top: 15, left: 25, right: 25),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Details',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  // Background color of the container
                                  borderRadius: BorderRadius.circular(20.0),
                                  // Rounded corners
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      // Shadow color
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(0, 3), // Shadow offset
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 8),
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Row(
                                    children: [
                                      ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                        // Adjust the radius as needed
                                        child: Image.network(
                                          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww&w=1000&q=80',
                                          fit: BoxFit.cover,
                                          height: 120,
                                          width: 120,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Name',
                                            style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 12,
                                                color: Colors.grey),
                                            textAlign: TextAlign.start,
                                          ),
                                          Text('Shreya Kumari',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text('Roll No',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                              textAlign: TextAlign.start),
                                          Text('21124102',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text('Hostel & Room No',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 12,
                                                  color: Colors.grey),
                                              textAlign: TextAlign.start),
                                          Text('MGH-E 117',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 18,
                                                  color: Colors.black),
                                              textAlign: TextAlign.start),
                                        ],
                                      )
                                    ],
                                  ),
                                )), //Profile Info Container
                            const SizedBox(
                              height: 15,
                            ),
                            const Text(
                              'Bill Overview',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  // Background color of the container
                                  borderRadius: BorderRadius.circular(20.0),
                                  // Rounded corners
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      // Shadow color
                                      spreadRadius: 3,
                                      blurRadius: 4,
                                      offset: Offset(0, 3), // Shadow offset
                                    ),
                                  ],
                                ),
                                margin: EdgeInsets.only(top: 8),
                                child: Column(children: [
                                  Stack(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(top: 110),
                                        child: const Padding(
                                            padding: EdgeInsets.all(10.0),
                                            child: Column(
                                              children: [
                                                Text('Money Spent',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black)),
                                                SizedBox(
                                                  height: 5,
                                                ),
                                                Text(
                                                  '25000',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 22,
                                                      color: Colors.black),
                                                ),
                                              ],
                                            )),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: const EdgeInsets.only(
                                            top: 30, bottom: 30),
                                        child: Padding(
                                          padding: EdgeInsets.only(right: 24),
                                          child: Transform.rotate(
                                              angle: -3.14 / 10,
                                              child: Stack(
                                                children: [
                                                  SemiCircularProgressBar(
                                                      progress: 0.60,
                                                      color: Colors.grey),
                                                  SemiCircularProgressBar(
                                                      progress: 0.50,
                                                      color: Colors.red),
                                                  SemiCircularProgressBar(
                                                      progress: 0.40,
                                                      color: Colors.green),
                                                  SemiCircularProgressBar(
                                                      progress: 0.30,
                                                      color: Colors.yellow),
                                                  SemiCircularProgressBar(
                                                      progress: 0.20,
                                                      color: Colors.blue),
                                                ],
                                              )),
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.blue,
                                            ),
                                            width: 25,
                                            height: 25,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Normal Meal',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                '₹ 12000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.yellow,
                                            ),
                                            width: 25,
                                            height: 25,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Extra Items',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                '₹ 4000',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.green,
                                            ),
                                            width: 25,
                                            height: 25,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Extra charges',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                '₹ 3300',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.red,
                                            ),
                                            width: 25,
                                            height: 25,
                                          ),
                                          SizedBox(
                                            width: 8,
                                          ),
                                          const Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Mess Fine',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w500,
                                                    color: Colors.grey,
                                                    fontSize: 14),
                                              ),
                                              Text(
                                                '₹ 1200',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 18),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 12,
                                  ),
                                ])), //Money Spent Container
                            const SizedBox(
                              height: 20,
                            ),
                GestureDetector(
                  onTap: (){
                    print('Button Tapped');
                  },
                  child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                color: cardColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Leave History',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        onPressed: (){},
                                        icon: Icon(Icons.keyboard_arrow_right
                                        ,color: Colors.white,))
                                  ],
                                ),
                              ),
                            ),),
                            const SizedBox(
                              height: 12,
                            ),
                        GestureDetector(
                          onTap: (){
                            print('Button Tapped');
                          },
                          child:
                          ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                padding: EdgeInsets.all(20),
                                color: cardColor,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Extra History',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Image.network(
                                          'https://www.pngall.com/wp-content/uploads/13/White-Arrow-PNG-Cutout.png',
                                          fit: BoxFit.contain,
                                          height: 120,
                                          width: 120,
                                        ))
                                  ],
                                ),
                              ),
                            ),),
                            const SizedBox(
                              height: 12,
                            ),
                           GestureDetector(
                             onTap: (){
                               print('Button Tapped');
                             },
                             child: ClipRRect(
                               borderRadius: BorderRadius.circular(20),
                               child: Container(
                                 padding: EdgeInsets.all(20),
                                 color: cardColor,
                                 child: Row(
                                   mainAxisAlignment:
                                   MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text(
                                       'Fine History',
                                       style: TextStyle(
                                           color: Colors.white,
                                           fontWeight: FontWeight.bold,
                                           fontSize: 18),
                                     ),
                                     IconButton(
                                         onPressed: (){},
                                         icon: Image.network(
                                           'https://www.pngall.com/wp-content/uploads/13/White-Arrow-PNG-Cutout.png',
                                           fit: BoxFit.contain,
                                           height: 120,
                                           width: 120,
                                         ))
                                   ],
                                 ),
                               ),
                             ),
                           ) ,
                            const SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      )),
        ));
  }

  goToLeaveHistory() {}
}