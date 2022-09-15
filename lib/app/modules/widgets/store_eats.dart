
import 'package:flutter/material.dart';


SingleChildScrollView store_eats_maintanance(text,rate,original,String image) {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                width: 120,
                height: 110,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),image: DecorationImage(image:AssetImage(image,),fit: BoxFit.fill)),
                child: Stack(
                  children: [
                    
                  
                   Positioned(child: Container(

                   width: 123,
                    decoration: BoxDecoration(color:  Color.fromARGB(255, 36, 116, 126),borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30),bottomRight:Radius.circular(30),topRight: Radius.circular(30),topLeft: Radius.circular(30) )),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.2),
                          child: Text(text,style: TextStyle(color: Colors.white,fontSize: 13),),
                        ),
                         Padding(
                           padding: const EdgeInsets.only(bottom:8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                             children: [
                               Text(rate,style: TextStyle(color: Color.fromARGB(255, 227, 177, 84),fontSize: 13),),
                             Text(original,style: TextStyle(decoration: TextDecoration.lineThrough,color: Colors.white,fontSize: 10),),
                             
                             ],
                           ),
                         )
                       
                      ],
                    ),
                   ),top: 56,)
                  
                  ],
                )
              ),
              
            ],),
          );
  }


