import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:untitled/controller/onboarding_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/data/datasource/static/static.dart';

class Slideronboarding extends GetView<OnboardingControllerImp> {
  const Slideronboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller.pageController,
      onPageChanged: (index) {
        controller.onPageChangedSlide(index);
      },
      itemCount: onboardinglist.length,
      itemBuilder: (context, index) => Column(
        children: [
          Text(
            onboardinglist[index].title,
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          SizedBox(height: 80),
          Image.asset(
            onboardinglist[index].image,
            height: 220,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 60),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              onboardinglist[index].description,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Color(ColorApp.greyColor)),
            ),
          ),
        ],
      ),
    );
  }
}
