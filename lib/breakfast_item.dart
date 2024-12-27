import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson111/Category_text.dart';
import 'package:lesson111/utils/utils.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CustomAppBar({
    super.key,
  })  : preferredSize = const Size.fromHeight(90.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColor.backgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(
                  "breakfast/vector.svg",
                  color: AppColor.textColor,
                ),
                const Text(
                  "Breakfast",
                  style: TextStyle(
                    color: AppColor.textColor,
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEC888D),
                          borderRadius: BorderRadius.circular(14)),
                      child: SvgPicture.asset(
                        "breakfast/notification.svg",
                        color: Colors.pink,
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 28,
                      height: 28,
                      decoration: BoxDecoration(
                          color: const Color(0xFFEC888D),
                          borderRadius: BorderRadius.circular(14)),
                      child: SvgPicture.asset(
                        "breakfast/search.svg",
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10,),
            SizedBox(
              height: 130,
              child: ListView(
                scrollDirection: Axis.horizontal, // Set to horizontal
                children: const [
                  Padding(
                      padding: EdgeInsets.all( 8.0),
                      child: Category_Text(text: "Breakfast")
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Category_Text(text: "Lunch"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    Category_Text(text: "Dinner"),
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child:
                    Category_Text(text: "Vegan"),
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Category_Text(text: "Dessert")
                  ),
                  Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Category_Text(text: "Drinks")
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Category_Text(text: "Seafood"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
