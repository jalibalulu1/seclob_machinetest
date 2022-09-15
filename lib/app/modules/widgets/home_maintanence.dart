import 'package:flutter/material.dart';

 SingleChildScrollView home_maintanance() {
    return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(children: [
              Container(
                width: 120,
                height: 110,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20),image: DecorationImage(image:AssetImage('asset/images/images.jpeg'))),
                child: Stack(
                  children: [
                    
                  
                   Positioned(child: Text("Painter",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),top: 95,left: 40,),
                  
                  ],
                )
              ),
              
            ],),
          );
  }


