import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seclob/app/modules/home/controllers/home_controller.dart';

class carousel_slider extends StatelessWidget {
  const carousel_slider({
    Key? key,
    required this.homeController,
  }) : super(key: key);

  final HomeController homeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(80)),
      child: CarouselSlider(
          items: homeController.imgList
              .map((e) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    e,
                    fit: BoxFit.fill,
                    width: Get.width,
                  )))
              .toList(),
          options: CarouselOptions(autoPlay: true, aspectRatio: 2.0)),
    );
  }
}
