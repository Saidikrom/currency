import 'package:currency/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CurrensyPart extends StatelessWidget {
  final String image;
  final String code;
  final String price;
  final String symbols;
  const CurrensyPart({
    Key? key,
    required this.image,
    required this.code,
    required this.price,
    required this.symbols,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipOval(
            child: SizedBox(
              height: 50,
              width: 50,
              child: SvgPicture.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      code,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      "$symbols 1.0",
                      style: TextStyle(
                          color: ColorConst.kBlackSecondaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 15.sp),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      //£
                      price,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    ),
                    Row(
                      children: [
                        Text(
                          "1.16%",
                          style: TextStyle(
                              color: ColorConst.kGreenSecondaryColor,
                              fontSize: 15.sp),
                        ),
                        Icon(
                          CupertinoIcons.arrow_up_right,
                          color: ColorConst.kGreenSecondaryColor,
                          size: 15.sp,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
