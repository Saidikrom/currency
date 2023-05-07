import 'package:currency/core/constants/color_constants.dart';
import 'package:currency/models/json_model.dart';
import 'package:currency/screens/top_part.dart';
import 'package:currency/services/api_services.dart';
import 'package:currency/services/image_of_flage_list.dart';
import 'package:currency/widgets/currency_part.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  LinkImages linkImages = LinkImages();
  JsonModel model = JsonModel();
  int index1 = 0;
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.kBlueSecondaryColor,
      body: FutureBuilder(
        future: ApiServices.getApi(),
        builder: (ctx, AsyncSnapshot<List<JsonModel>> snap) {
          if (!snap.hasData) {
            return const Center(child: CircularProgressIndicator.adaptive());
          } else if (snap.hasError) {
            return Center(
                child: Text(
              "ERROR FROM BACKEND",
              style: TextStyle(
                  color: ColorConst.kBlackSecondaryColor, fontSize: 25.sp),
            ));
          }
          return Column(
            children: [
               TopPart(snap: snap,),
              SizedBox(
                height: 30.h,
              ),
              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 300.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Text(
                          "My Portfolios",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 25.sp),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 100.h,
                            width: 429.w,
                            child: ListView.builder(
                              itemCount: snap.data!.length,
                              itemBuilder: (ctx, index) {
                                return CurrensyPart(
                                  symbols: linkImages.list[index].symbols,
                                  price: snap.data![index].cbPrice.toString(),
                                  code: snap.data![index].code.toString(),
                                  image: linkImages.list[index].imageLink,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
