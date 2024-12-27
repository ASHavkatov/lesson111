import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson111/CategoryImage.dart';
import 'package:lesson111/breakfast_item.dart';
import 'package:lesson111/utils/utils.dart';

class MainPages extends StatelessWidget {
  const MainPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: AppColor.backgroundColor,
      appBar: const CustomAppBar(),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 130),
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: AssetImage("breakfast/eggs_benedict.png"),
                duration: "15",
                description: "Muffin with Canadian bacon",
                mark: "5",
                name: "Eggs Benedict",
              ),
              CategoryItem(
                image: AssetImage("breakfast/french_toast.png"),
                duration: '20',
                description: "Delicious slices of     bread",
                mark: "5",
                name: "French Toast",
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: AssetImage("breakfast/oatmeal_and_nut.png"),
                duration: "35",
                description: "Wholesome blend for breakfast",
                mark: '4',
                name: "Oatmeal and Nut",
              ),
              CategoryItem(
                image: AssetImage("breakfast/still_life_potato.png"),
                duration: "30",
                description: 'Earthy, Textured, Rustic charm',
                mark: '4',
                name: "Still life Potato",
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: AssetImage("breakfast/oatmeal_granola.png"),
                duration: '30',
                description: 'Strawberries and Blueberries',
                mark: '4',
                name: "Oatmeal Granola",
              ),
              CategoryItem(
                image: AssetImage("breakfast/sunny_bruschetta.png"),
                duration: '30',
                description: "With Cream Cheese",
                mark: '4',
                name: "Sunny Bruschetta",
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryItem(
                image: AssetImage("breakfast/omelette_cheese.png"),
                duration: '30',
                description: "Fresh Parsley",
                mark: '4',
                name: "Omelette Cheese",
              ),
              CategoryItem(
                image: AssetImage("breakfast/tofu_sandwich.png"),
                duration: '30',
                description: 'Microgreens',
                mark: '4',
                name: "Tofu Sandwich",
              )
            ],
          ),
        ],
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: 281,
          height: 56,
          decoration: BoxDecoration(
            color: AppColor.textColor,
            borderRadius: BorderRadius.circular(33),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "breakfast/home.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "breakfast/community.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "breakfast/categories.svg",
                width: 25,
                height: 22,
              ),
              SvgPicture.asset(
                "breakfast/profile.svg",
                width: 25,
                height: 22,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
