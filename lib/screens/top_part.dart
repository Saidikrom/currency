import 'package:currency/core/constants/color_constants.dart';
import 'package:currency/models/json_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopPart extends StatelessWidget {
  AsyncSnapshot<List<JsonModel>> snap;
  TopPart({Key? key, required this.snap}) : super(key: key);
  List list = [];
  List list1 = [];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20.h,
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Total Balance",
                  style: TextStyle(
                    color: ColorConst.kWhiteSecondaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.picture_in_picture,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Text(
            "\$ 2,445.21",
            style: TextStyle(color: Colors.white, fontSize: 40.sp),
          ),
          SizedBox(
            height: 20.h,
          ),
          Row(
            children: [
              Text(
                "+ \$ 252.26",
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              SizedBox(
                width: 20.w,
              ),
              Row(
                children: [
                  Text(
                    "4.28%",
                    style: TextStyle(
                        color: ColorConst.kGreenSecondaryColor,
                        fontSize: 16.sp),
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
          SizedBox(
            height: 40.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 45.h,
                width: 150.w,
                child: MaterialButton(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                  onPressed: () {
                    prints(snap);
                  },
                  child: const Text(
                    "Buy",
                    style: TextStyle(
                        color: ColorConst.kBlueSecondaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: 45.h,
                width: 150.w,
                child: MaterialButton(
                  color: ColorConst.kBlackSecondaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(17.r),
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Sell",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void prints(AsyncSnapshot<List<JsonModel>> snap) {
    for (var i = 0; i < 24; i++) {
      // list.add(snap.data![i].cbPrice);
      // list1.add(snap.data![i].cbPrice);
      if (snap.data![i].cbPrice == list[i]) {
        print("teng");
      } else
        (print("object"));
      // print(
      //   snap.data![i].cbPrice,
      // );
    }
  }

  // print(a);
}
