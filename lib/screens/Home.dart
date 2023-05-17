import 'package:fit_app/screens/Lessons.dart';
import 'package:fit_app/screens/Programs.dart';
import 'package:fit_app/screens/events_exp.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Colors.blue.shade50,
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 15.0,vertical: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(alignment:Alignment.centerLeft,child: Text('Hello,Priya!',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold))),
                  SizedBox(height: 10,),
                  Align(alignment:Alignment.centerLeft,child: Text('What do you wanna learn today?',style: TextStyle(color: Colors.black,fontSize: 15),textAlign: TextAlign.start)),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.blueAccent.shade700,
                          )
                        ),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/books.png",width: 20,height: 20,color: Colors.blueAccent.shade700),
                            SizedBox(width: 10,),
                            Text('Programs',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 16,fontWeight: FontWeight.bold),)
                          ],
                        ),),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.blueAccent.shade700,
                            )
                        ),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/ques.png",width: 20,height: 20,color: Colors.blueAccent.shade700),
                            SizedBox(width: 10,),
                            Text('Get Help',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 16,fontWeight: FontWeight.bold),)
                          ],
                        )),
                      )
                    ],
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.blueAccent.shade700,
                            )
                        ),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/opb.png",width: 20,height: 20,color: Colors.blueAccent.shade700),
                            SizedBox(width: 10,),
                            Text('Learn',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 16,fontWeight: FontWeight.bold),)
                          ],
                        ),),
                      ),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width*0.45,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.blueAccent.shade700,
                            )
                        ),
                        child: Center(child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset("assets/stats.png",width: 20,height: 20,color: Colors.blueAccent.shade700),
                            SizedBox(width: 10,),
                            Text('DD Tracker',style: TextStyle(color: Colors.blueAccent.shade700,fontSize: 16,fontWeight: FontWeight.bold),)
                          ],
                        )),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Programs for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                    InkWell(onTap:(){},child: Text('View all ->',style: TextStyle(fontSize: 15,color: Colors.grey)))
                  ],
                ),
            ),
            Programs(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Events and Experiences',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Schyler')),
                  InkWell(onTap:(){},child: Text('View all->',style: TextStyle(fontSize: 15,color: Colors.grey)))
                ],
              ),
            ),
            Events(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Lessons for you',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'Schyler')),
                  InkWell(onTap:(){},child: Text('View all->',style: TextStyle(fontSize: 15,color: Colors.grey)))
                ],
              ),
            ),
            Lesson(),
          ],
        ),
      ),
    );
  }
}
