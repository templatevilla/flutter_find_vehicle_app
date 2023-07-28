import 'package:find_vehile_app/util/constant.dart';
import 'package:find_vehile_app/util/constant_widget.dart';
import 'package:find_vehile_app/util/icons.dart';
import 'package:find_vehile_app/util/images.dart';
import 'package:find_vehile_app/view/home_screen/model_data/car_option_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../generated/l10n.dart';
import '../../routes/app_routes.dart';
import '../../util/color_category.dart';
import 'controller/home_screen_controller.dart';
import 'model/car_option_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeScreenController homeScreenController = Get.put(HomeScreenController());
  List<CarOption> car = CarData.getCarOption();

  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return WillPopScope(
        child: Scaffold(
          body: SafeArea(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        Constant.assetImagePath + GetImages.backgroundImage,
                      ),
                      fit: BoxFit.cover)),
              child: Column(
                children: [
                  getVerSpace(16.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 40.h,
                        width: 40.h,
                        decoration: BoxDecoration(
                            border: Border.all(color: regularBlack),
                            shape: BoxShape.circle),
                        child: getSvgImage(GetIcons.leftArrowIcon,
                                color: regularBlack, height: 24.h, width: 24.h)
                            .paddingAll(8.h),
                      ),
                      getCustomFont(S.of(context).findYourVehicle, 20.sp, regularBlack, 1,
                          fontWeight: FontWeight.w700),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            useSafeArea: true,
                            isScrollControlled: true,
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) {
                              return bottomSheetWidget();
                            },
                          );
                        },
                        child: Container(
                          height: 40.h,
                          width: 40.h,
                          decoration: BoxDecoration(
                              border: Border.all(color: regularBlack),
                              shape: BoxShape.circle),
                          child: getSvgImage(GetIcons.moreVertHorIcon,
                                  color: regularBlack)
                              .paddingSymmetric(
                                  vertical: 10.h, horizontal: 10.h),
                        ),
                      ),
                    ],
                  ).paddingSymmetric(horizontal: 20.h),
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async {
          return false;
        });
  }

  Widget bottomSheetWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.h),
              color: Color(0XFFFCFBFC),
              border: Border.all(color: borderColor)),
          child: Row(
            children: [
              getSvgImage(GetIcons.distanceIcon, height: 82.h, width: 24.h),
              getHorSpace(16.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    showDestinationFormate(
                        S.of(context).startLocation, S.of(context).yourCurrentLocation),
                    getVerSpace(16.h),
                    showDestinationFormate(
                        S.of(context).yourDestination, S.of(context).alohaCafe4342aMarissonHotel),
                  ],
                ),
              )
            ],
          ).paddingAll(16.h),
        ).paddingSymmetric(horizontal: 20.h),
        getVerSpace(16.h),
        getDivider(setColor: borderColor).paddingSymmetric(horizontal: 20.h),
        getVerSpace(20.h),
        getCustomFont(S.of(context).availableOptions, 16.sp, regularBlack, 1,
                fontWeight: FontWeight.w700)
            .paddingSymmetric(horizontal: 20.h),
        GetBuilder<HomeScreenController>(
          init: HomeScreenController(),
          builder: (controller) => ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: car.length,
            itemBuilder: (context, index) {
              CarOption data = car[index];
              return GestureDetector(
                onTap: () {
                  controller.setCurrentId(index);
                  // Constant.sendToNext(context, Routes.selectedCArScreenRoute);
                  Constant.sendToNext(context, Routes.paymentDoneScreenRoute);
                },
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.h),
                      border: Border.all(
                          color: controller.currentIndex == index
                              ? regularBlack
                              : borderColor)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                              height: 72.h,
                              width: 128.h,
                              child: Stack(children: [
                                getAssetImage(data.carImage!),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 39.h,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(16.h),
                                        color: regularBlack,
                                        border: Border.all(
                                            color: regularWhite, width: 1.2.h)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        getSvgImage(GetIcons.userIcon),
                                        getHorSpace(4.h),
                                        getCustomFont(data.noOfseet!, 14.sp,
                                            regularWhite, 1,
                                            fontWeight: FontWeight.w500)
                                      ],
                                    ),
                                  ),
                                ).paddingOnly(right: 8.h, bottom: 9.h)
                              ])),
                          getHorSpace(8.h),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              getCustomFont(
                                  data.carSize!, 18.sp, regularBlack, 1,
                                  fontWeight: FontWeight.w500),
                              getVerSpace(4.h),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  getCustomFont(
                                      data.compony!, 14.sp, regularBlack, 1,
                                      fontWeight: FontWeight.w500),
                                  getHorSpace(2.h),
                                  Container(
                                    height: 7.h,
                                    width: 7.h,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: regularBlack),
                                  ),
                                  getHorSpace(2.h),
                                  getCustomFont(
                                      data.color!, 14.sp, regularBlack, 1,
                                      fontWeight: FontWeight.w500),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      getCustomFont("\$${data.price}", 22.sp, regularBlack, 1,
                          fontWeight: FontWeight.w500)
                    ],
                  ).paddingOnly(top: 8.h, bottom: 8.h, left: 8.h, right: 16.h),
                ).paddingSymmetric(vertical: 8.h),
              );
            },
          ),
        ).paddingSymmetric(horizontal: 20.h),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
                offset: Offset(0, 0),
                blurRadius: 12,
                color: regularBlack.withOpacity(0.08))
          ], color: regularWhite),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getCustomFont(S.of(context).paymentMethod, 16.sp, regularBlack, 1,
                  fontWeight: FontWeight.w700),
              getVerSpace(16.h),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                    border: Border.all(color: borderColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 61.h,
                          width: 61.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16.h),
                              border: Border.all(color: borderColor),
                              color: Color(0XFFFBF9F5)),
                          child: getSvgImage(GetIcons.coinIcon).paddingAll(15.h),
                        ).paddingAll(8.h),
                        getHorSpace(8.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            getCustomFont(S.of(context).gocabCoin, 18.sp, regularBlack, 1,
                                fontWeight: FontWeight.w500),
                            getCustomFont(S.of(context).youHave120000GocabCoins, 14.sp,
                                regularBlack, 1,
                                fontWeight: FontWeight.w500),
                          ],
                        )
                      ],
                    ),
                    getSvgImage(GetIcons.downArrowIcon).paddingOnly(right: 16.h),
                    getVerSpace(24.h),
                  ],
                ),
              ),
              getVerSpace(24.h),
              getButton(context, regularBlack, S.of(context).findDriver, regularWhite,
                  () { Constant.sendToNext(context, Routes.selectedCArScreenRoute);}, 16.sp,
                  weight: FontWeight.w700,
                  buttonHeight: 48.h,
                  borderRadius: BorderRadius.circular(16.h))
            ],
          ).paddingSymmetric(horizontal: 20.h, vertical: 16.h),
        )
      ],
    ).paddingOnly(top: 16.h);
  }

  Widget showDestinationFormate(title, text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        getCustomFont(title, 14.sp, darkGray, 1, fontWeight: FontWeight.w500),
        getCustomFont(text, 18.sp, regularBlack, 2,
            fontWeight: FontWeight.w500, overflow: TextOverflow.ellipsis)
      ],
    );
  }
}
