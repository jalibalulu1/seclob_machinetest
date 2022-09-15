import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seclob/app/modules/widgets/icon_gradient.dart';

class electrician extends StatelessWidget {
  const electrician({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
          Container(
               padding: EdgeInsets.only(top:15),
              width: 85,
              height: 120,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400,
                              blurRadius: 2,
                              offset: Offset(0, 3))
                        ]),
                    child: ClipOval(
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.white),
                        child: RadiantGradientMask(
                          child: Icon(
                            Icons.electrical_services_outlined,
                            size: 36,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "Electrician",
                    style: TextStyle(
                      fontSize: 12,
                      color: (Color.fromARGB(255, 41, 88, 118)),
                    ),
                  ),
                  Text(
                    "Seclob service",
                    style: TextStyle(
                      fontSize: 8,
                      color: (Colors.grey.shade600),
                    ),
                  ),
                  Center(
                    child:  Text(
                    "at Kochi",
                    style: TextStyle(
                      fontSize: 8,
                      color: (Colors.grey.shade600),
                    ),
                  ),
                  ),
                  SizedBox(height: 2,),
                  Container(
                    
                    width: Get.width,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 31, 70, 47),
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                      
                    ),child: Padding(
                      padding: const EdgeInsets.all(2.5),
                      child: Center(child: Text('20 minutes ago',style: TextStyle(color: Colors.white,fontSize:8),)),
                    ),
                  )
                  

                  //  Positioned(child: Text("Painter",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500)),top: 95,left: 40,),
                ],
              ));
       
  }
}
