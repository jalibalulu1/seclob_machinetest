import 'package:flutter/material.dart';

class vehicle_service extends StatelessWidget {
  IconData? icon;
  String? texts;
   vehicle_service(this. icon,this.texts, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color:Color.fromARGB(255, 45, 132, 135),borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 50,
            color: Colors.white,
          ),
          SizedBox(
            height: 1,
          ),
          Text(texts!
           ,
            style:
                TextStyle(fontSize: 10, color: Colors.white),
          )
        ],
      ),
    );
  }
}
