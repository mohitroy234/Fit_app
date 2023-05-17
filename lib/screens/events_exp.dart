import 'package:fit_app/model/exer.dart';
import 'package:flutter/material.dart';

class Events extends StatelessWidget {
   Events({Key? key}) : super(key: key);
   final eventList = category.eventsandexperiences();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width:double.infinity,
      child:ListView.builder(itemCount:eventList.length,shrinkWrap:true,scrollDirection:Axis.horizontal,itemBuilder:(context,index) {
        return GestureDetector(
          onTap: (){},
          child: Container(
            margin: EdgeInsets.all(10.0),
            width: 280,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.shade400,
                      spreadRadius: 2.0,
                      blurRadius: 3.0
                  )
                ]
            ),
            child: Column(
              children: [
                Image.asset(eventList[index].imageUrl,fit:BoxFit.fitWidth),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Align(alignment:Alignment.centerLeft,child: Text(eventList[index].name,style: TextStyle(color: Colors.blue.shade600,fontSize: 14,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Align(alignment:Alignment.centerLeft,child: Container(child: Text(eventList[index].des,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.black),))),
                ),
                SizedBox(height: 5),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                     Text(eventList[index].lessons,style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold,color: Colors.grey)),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(
                            color: Colors.blueAccent.shade700
                          )
                        ),
                        child: Center(child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 10.0),
                          child: Text('Book',style: TextStyle(fontSize: 15,color: Colors.blueAccent.shade700),),
                        ),),
                      )
                    ],
                  )
                ),
              ],
            ),
          ),
        );
      }) ,
    );
  }
}
