import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson111/utils/utils.dart';


class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.image,
    required this.duration,
    required this.description,
    required this.mark,
    required this.name,
  });

  final ImageProvider image;
  final String name, description, duration, mark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.center,
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 169,
              height: 153,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: -70,
              left: 0,
              right: 0,
              child: Container(
                width: 160,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(14),
                    bottomRight: Radius.circular(14),
                  ),
                  border: Border.all(color: AppColor.pinkColor, width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color:Colors.black),
                      ),
                      Text(
                        description,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                mark,
                                style: const TextStyle(
                                  color: AppColor.pinkColor,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              SvgPicture.asset(
                                "breakfast/star.svg",
                                color: AppColor.pinkColor,
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                "breakfast/clock.svg",
                                color: AppColor.pinkColor,
                              ),
                              Text(
                                '$duration min',
                                style: const TextStyle(
                                  color: AppColor.pinkColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}