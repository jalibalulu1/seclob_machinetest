import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seclob/app/modules/widgets/icon_gradient.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  int pageIndex = 0;
  List<String> imgList = [
    "asset/images/music.jpeg",
    "asset/images/netflix.jpeg",
    "asset/images/food_offer.jpeg"
  ];
// IconData selectedItem = Icons.dashboard ;
// List<IconData> itemsList = [
//     Icons.dashboard, Icons.location_on, Icons.notifications, Icons.account_circle,
// ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  final gradientColors = List<Color>.from(
      [Color.fromARGB(255, 177, 243, 33), Color.fromARGB(255, 42, 135, 42)]);
  @override
  void onClose() {}
  void increment() => count.value++;
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 70,
      decoration: BoxDecoration(
        color: Theme.of(context).bottomAppBarColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: pageIndex == 0
                    ? 
                    RadiantGradientMask(
                    child: Icon(
                       Icons.home,
                      size: 36,
                      color: Colors.white,
                    ),
                  ):const Icon(
                        Icons.home_filled,
                        color: Colors.black87,
                        size: 35,
                      )
                   
              ),
              Text('Home',style: TextStyle(fontSize: 13),)
            ],
          ),
         
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: pageIndex == 2
                    ?
                     const Icon(
                        Icons.widgets_rounded,
                        color: Colors.white,
                        size: 35,
                      )
                    :  RadiantGradientMask(
                    child: Icon(
                       Icons.person_add_alt,
                      size: 36,
                      color: Colors.white,
                    ),
                  )
              ), Text('Invest & Earn',style: TextStyle(fontSize: 13),)

            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: pageIndex == 3
                    ? const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35,
                      )
                    :  RadiantGradientMask(
                    child: Icon(
                       Icons.list_alt_sharp,
                      size: 36,
                      color: Colors.white,
                    ),
                  )
              ), Text('Free Listing',style: TextStyle(fontSize: 13),)
            ],
          ),
          Column(
            children: [
              IconButton(
                enableFeedback: false,
                onPressed: () {},
                icon: pageIndex == 4
                    ? const Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 35,
                      )
                    :  RadiantGradientMask(
                    child: Icon(
                       Icons.person_outline_outlined,
                      size: 36,
                      color: Colors.white,
                    ),
                  )
              ), Text('Account',style: TextStyle(fontSize: 13),)
            ],
          ),
        ],
      ),
    );
  }

  gridicon(icons, text) {
    return Container(
      child: Column(
        children: [
          ClipOval(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white),
              child: RadiantGradientMask(
                child: Icon(
                  icons,
                  size: 36,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 10, color: Colors.white),
          )
        ],
      ),
    );
  }
}
