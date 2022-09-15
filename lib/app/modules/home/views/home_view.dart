import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:get/get.dart';
import 'package:seclob/app/modules/widgets/carousel_slider.dart';
import 'package:seclob/app/modules/widgets/electrician.dart';
import 'package:seclob/app/modules/widgets/home_maintanence.dart';
import 'package:seclob/app/modules/widgets/icon_gradient.dart';
import 'package:seclob/app/modules/widgets/store_eats.dart';
import 'package:seclob/app/modules/widgets/vehicle_services.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                Color.fromARGB(255, 41, 62, 65),
                Color.fromARGB(255, 57, 141, 144)
              ])),
        ),
        leading: Padding(
          padding: const EdgeInsets.all(10),
          child: ClipOval(
            child: Image(
              image: Image.asset('asset/images/logo.jpeg').image,
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.only(left: 5, right: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.black,
                    size: 22,
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  Text(
                    'Palazhi, Kozhikode, 67..',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Icon(Icons.menu_rounded),
          SizedBox(
            width: 15,
          )
        ],
        centerTitle: true,
      ),
      bottomNavigationBar: homeController.buildMyNavBar(context),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: <Color>[
                          Color.fromARGB(255, 41, 62, 65),
                          Color.fromARGB(255, 57, 141, 144)
                        ])),
                child: GridView.count(
                  mainAxisSpacing: 20,
                  crossAxisCount: 4,
                  crossAxisSpacing: 20,

                  physics:
                      NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                  shrinkWrap: true, // You won't see infinite size error
                  children: <Widget>[
                    homeController.gridicon(Icons.settings, 'Services'),
                    homeController.gridicon(Icons.chat_rounded, 'Enquity'),
                    homeController.gridicon(Icons.store_mall_directory_outlined, 'Store'),
                    homeController.gridicon(Icons.badge, 'Job'),
                    homeController.gridicon(Icons.newspaper, 'News'),
                    homeController.gridicon(Icons.car_repair_outlined, 'Vehicle'),
                    homeController.gridicon(Icons.food_bank_outlined, 'Eats'),
                    homeController.gridicon(Icons.read_more_sharp, 'More'),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Container(
                        child: Row(children: [
                          Container(
                            padding: EdgeInsets.only(
                                top: 11, left: 20, right: 20, bottom: 11),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.mobile_friendly,
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mobile",
                                      style: TextStyle(
                                          color: (Colors.white), fontSize: 15),
                                    ),
                                    Text("Recharge",
                                        style: TextStyle(
                                            color: (Colors.white),
                                            fontSize: 15))
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomRight: Radius.circular(20)),
                                color: Color.fromARGB(255, 245, 188, 103)),
                            child: Column(
                              children: [
                                Text(
                                  "2%",
                                  style: TextStyle(
                                      color: (Color.fromARGB(255, 41, 88, 118)),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text("off",
                                    style: TextStyle(
                                        color: (Colors.black), fontSize: 22))
                              ],
                            ),
                          )
                        ]),
                      )
                    ],
                  )),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(
                        top: 11, left: 20, right: 20, bottom: 11),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: <Color>[
                              Color.fromARGB(255, 107, 33, 134),
                              Color.fromARGB(255, 236, 121, 222),
                            ])),
                    child: Row(
                      children: [
                        Icon(
                          Icons.wallet_giftcard_outlined,
                          color: Colors.white,
                          size: 50,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Rewards",
                              style: TextStyle(
                                  color: (Colors.white),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text("Invite friends",
                                style: TextStyle(
                                    color: (Colors.white), fontSize: 10)),
                            Text("get rewards",
                                style: TextStyle(
                                    color: (Colors.white), fontSize: 10))
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
       
            
            
            Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text(
                'Vehicle Services',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 13, 84, 83),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 15,),
              Container(
                child: GridView.count(
                        mainAxisSpacing: 20,
                        crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        physics:
                            NeverScrollableScrollPhysics(), // to disable GridView's scrolling
                        shrinkWrap: true, // You won't see infinite size error
                        children: <Widget>[
                          vehicle_service(Icons.car_repair,"Car Accessories"),
                          vehicle_service(Icons.bike_scooter,"Bullet"),
                          vehicle_service(Icons.local_car_wash_outlined,"Car Wash"),
                          vehicle_service(Icons.car_rental,"Jeep"),
                          vehicle_service(Icons.pedal_bike,"Bike"),
                          vehicle_service(Icons.menu,"More")
                        ]),
              )
                    
                  ],
                )),
          
        
        SizedBox(
          height: 15,
        ),
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 216, 249, 249)),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Home maintanance',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 13, 84, 83),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 14,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                ]),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(20),
          child: carousel_slider(homeController: homeController),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 235, 233, 233),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    electrician(),
                    SizedBox(
                      width: 10,
                    ),
                    electrician(),
                    SizedBox(
                      width: 10,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    electrician(),
                    SizedBox(
                      width: 10,
                    ),
                    electrician(),
                    SizedBox(
                      width: 10,
                    ),
                    electrician(),
                    SizedBox(
                      width: 10,
                    ),
                    electrician(),
                    SizedBox(
                      width: 10,
                    ),
                    electrician(),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
                ),
              ),
            )),
        Padding(
          padding: EdgeInsets.all(20),
          child: carousel_slider(homeController: homeController),
        ),
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 216, 249, 249)),
          padding: const EdgeInsets.all(20.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Store',
                  style: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 13, 84, 83),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 14,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                    store_eats_maintanance('Y156', '23000/-  ', '25000','asset/images/mobiles.jpeg'),
                    SizedBox(
                      width: 10,
                    ),
                  ]),
                )
              ]),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 216, 249, 249)),
          padding:
              const EdgeInsets.only(left: 20.0, right: 20, top: 10, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Store',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 13, 84, 83),
                    fontWeight: FontWeight.w500),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                  store_eats_maintanance('Biriyan', '100/-  ', '150','asset/images/biriyani.jpeg'),
                  SizedBox(
                    width: 10,
                  ),
                ]),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          decoration: BoxDecoration(color: Color.fromARGB(255, 216, 249, 249)),
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Jobs',
                style: TextStyle(
                    fontSize: 15,
                    color: Color.fromARGB(255, 13, 84, 83),
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 14,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                  home_maintanance(),
                  SizedBox(
                    width: 10,
                  ),
                ]),
              )
            ],
          ),
        ),
        SizedBox(
          height: 20,
        )
      ]),
    );
  }
}

