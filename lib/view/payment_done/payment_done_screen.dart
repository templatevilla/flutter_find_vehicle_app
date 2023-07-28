import 'package:find_vehile_app/util/color_category.dart';
import 'package:find_vehile_app/util/constant.dart';
import 'package:find_vehile_app/util/constant_widget.dart';
import 'package:find_vehile_app/util/icons.dart';
import 'package:find_vehile_app/util/images.dart';
import 'package:find_vehile_app/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../generated/l10n.dart';

class PaymentDoneScreen extends StatefulWidget {
  const PaymentDoneScreen({Key? key}) : super(key: key);

  @override
  State<PaymentDoneScreen> createState() => _PaymentDoneScreenState();
}

class _PaymentDoneScreenState extends State<PaymentDoneScreen> {
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
                        Constant.assetImagePath + GetImages.backgroundImage),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                getVerSpace(20.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    color: regularWhite,
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Get.off(HomeScreen());
                            },
                            child: Container(
                              height: 48.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16.h),
                                  border: Border.all(color: regularBlack),
                                  color: regularWhite),
                              child: Center(
                                  child: getCustomFont(S.of(context).backToHome,
                                      16.sp, regularBlack, 1,
                                      fontWeight: FontWeight.w700)),
                            ),
                          ),
                        ),
                        getHorSpace(16.h),
                        Expanded(
                            child: getButton(context, regulerBlack,
                                S.of(context).downloadBill, regularWhite, () {
                          showModalBottomSheet(
                            useSafeArea: true,
                            isScrollControlled: true,
                            backgroundColor: Colors.white,
                            context: context,
                            builder: (context) {
                              return bottomSheetWidget();
                            },
                          );
                        }, 16.sp,
                                weight: FontWeight.w700,
                                borderRadius: BorderRadius.circular(16.h),
                                buttonHeight: 48.h)),
                      ],
                    ).paddingSymmetric(horizontal: 20.h, vertical: 16.h),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      onWillPop: () async {
        Constant.backToPrev(context);
        return false;
      },
    );
  }

  Widget bottomSheetWidget() {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      getVerSpace(16.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
              onTap: () {
                Constant.backToPrev(context);
              },
              child: appBarButton(GetIcons.leftArrowIcon)),
          getCustomFont(S.of(context).youveArrived, 20.sp, regularBlack, 1,
              fontWeight: FontWeight.w700),
          appBarButton(GetIcons.shareIcon),
        ],
      ).paddingSymmetric(horizontal: 20.h),
      getVerSpace(16.h),
      Container(
        width: double.infinity,
        color: regularBlack,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            getCustomFont(S.of(context).makeSureYourBelongingsAreNotLeftBehind,
                16.sp, regularWhite, 1,
                fontWeight: FontWeight.w500),
            getSvgImage(GetIcons.closeIcon)
          ],
        ).paddingSymmetric(horizontal: 20.h, vertical: 15.h),
      ),
      getVerSpace(32.h),
      Container(
        height: 114.h,
        width: 198.h,
        child: Stack(
          children: [
            getAssetImage(GetImages.tayotaCAr2ndImage),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  height: 70.h,
                  width: 70.h,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: regularWhite, width: 3.h),
                      image: DecorationImage(
                          image: AssetImage(
                              Constant.assetImagePath + GetImages.userImage))),
                ).paddingOnly(bottom: 10.h))
          ],
        ),
      ),
      getVerSpace(9.h),
      getCustomFont(S.of(context).handokoMulyono, 22.sp, regularBlack, 1,
          fontWeight: FontWeight.w700),
      getVerSpace(2.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          getCustomFont(S.of(context).toyotaHrv, 14.sp, regularBlack, 1,
              fontWeight: FontWeight.w500),
          getHorSpace(4.h),
          Container(
            height: 7.h,
            width: 7.h,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: regularBlack),
          ),
          getHorSpace(4.h),
          getCustomFont(S.of(context).l2323rf, 14.sp, regularBlack, 1,
              fontWeight: FontWeight.w500),
        ],
      ),
      getVerSpace(24.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getCustomFont(S.of(context).tripCompleted, 16.sp, regularBlack, 1,
              fontWeight: FontWeight.w700),
          Row(
            children: [
              getCustomFont(S.of(context).gocab125489658745, 16.sp, darkGray, 1,
                  fontWeight: FontWeight.w500),
              getHorSpace(8.h),
              getSvgImage(GetIcons.copyIcon)
            ],
          ),
        ],
      ).paddingSymmetric(horizontal: 20.h),
      getVerSpace(16.h),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          getCustomFont(S.of(context).date, 16.sp, regularBlack, 1,
              fontWeight: FontWeight.w700),
          getCustomFont(S.of(context).monday22May2023, 16.sp, darkGray, 1,
              fontWeight: FontWeight.w500),
        ],
      ).paddingSymmetric(horizontal: 20.h),
      getVerSpace(20.h),
      getDivider(setColor: dividerColor),
      getVerSpace(20.h),
      getCustomFont(S.of(context).howWasYourTrip, 20.sp, regularBlack, 1,
          fontWeight: FontWeight.w500),
      getVerSpace(8.h),
      getCustomFont(
          S.of(context).give1ToFiveStarsAboutYourTrip, 16.sp, regularBlack, 1,
          fontWeight: FontWeight.w500),
      getVerSpace(10.h),
      RatingBar.builder(
        initialRating: 0,
        minRating: 0,
        direction: Axis.horizontal,
        allowHalfRating: true,
        itemCount: 5,
        itemSize: 45.h,
        itemPadding: EdgeInsets.symmetric(horizontal: 5.h),
        itemBuilder: (context, _) => Icon(
          Icons.star,
          color: Colors.amber,
        ),
        unratedColor: '#E0E0E0'.toColor(),
        onRatingUpdate: (rating) {},
      ),
      getVerSpace(20.h),
      getDivider(setColor: dividerColor),
      getVerSpace(20.h),
      Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.h),
            color: Color(0XFFFCFBFC),
            border: Border.all(color: borderColor)),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                getCustomFont(S.of(context).tripDetails, 16.sp, regularBlack, 1,
                    fontWeight: FontWeight.w700),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16.h),
                      color: Color(0XFFE4E4E4),
                    ),
                    child: Row(
                      children: [
                        getSvgImage(GetIcons.doubleRingIcon),
                        getHorSpace(6.h),
                        getCustomFont(S.of(context).coins, 14.sp, gray, 1,
                            fontWeight: FontWeight.w500),
                      ],
                    ).paddingSymmetric(vertical: 3.h, horizontal: 8.h)),
              ],
            ),
            getVerSpace(17.h),
            tripDataRow(S.of(context).pickupLocation,
                S.of(context).airlanggaUniversity),
            getVerSpace(17.h),
            tripDataRow(S.of(context).destination,
                S.of(context).alohaCafe4342aMarissonHotel),
            getVerSpace(20.h),
            getDivider(setColor: dividerColor),
            getVerSpace(17.h),
            tripDataRow(S.of(context).paymentMethod, S.of(context).gocabCoin),
          ],
        ).paddingSymmetric(horizontal: 16.h, vertical: 16.h),
      ).paddingSymmetric(
        horizontal: 20.h,
      )
    ]);
  }

  Widget appBarButton(icon) {
    return Container(
      height: 40.h,
      width: 40.h,
      decoration: BoxDecoration(
          border: Border.all(color: containerBorder), shape: BoxShape.circle),
      child: getSvgImage(icon, color: regularBlack, height: 24.h, width: 24.h)
          .paddingAll(8.h),
    );
  }

  Widget tripDataRow(title, text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        getCustomFont(title, 16.sp, regulerBlack, 1,
            fontWeight: FontWeight.w700),
        getCustomFont(text, 16.sp, darkGray, 1, fontWeight: FontWeight.w500),
      ],
    );
  }
}
