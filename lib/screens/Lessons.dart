import 'package:fit_app/model/exer.dart';
import 'package:flutter/material.dart';

class Lesson extends StatelessWidget {
  Lesson({Key? key}) : super(key: key);
  final lessonList= category.lessonsforyou();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width:double.infinity,
      child:ListView.builder(itemCount:lessonList.length,shrinkWrap:true,scrollDirection:Axis.horizontal,itemBuilder:(context,index) {
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
                Image.asset(lessonList[index].imageUrl,fit:BoxFit.fitWidth),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Align(alignment:Alignment.centerLeft,child: Text(lessonList[index].name,style: TextStyle(color: Colors.blue.shade600,fontSize: 14,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child: Align(alignment:Alignment.centerLeft,child: Container(child: Text(lessonList[index].des,style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Colors.black),))),
                ),
                SizedBox(height: 5),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(lessonList[index].lessons,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.grey)),
                        Icon(Icons.lock_outlined,color: Colors.grey,)
                      ],
                    )
                ),
              ],
            ),
          ),
        );
      }) ,
    );;
  }
}
