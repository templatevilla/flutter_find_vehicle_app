import 'package:find_vehile_app/util/color_category.dart';
import 'package:find_vehile_app/util/constant.dart';
import 'package:find_vehile_app/util/constant_widget.dart';
import 'package:find_vehile_app/util/icons.dart';
import 'package:find_vehile_app/util/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../generated/l10n.dart';

class SelectedCArScreen extends StatefulWidget {
  const SelectedCArScreen({Key? key}) : super(key: key);

  @override
  State<SelectedCArScreen> createState() => _SelectedCArScreenState();
}

class _SelectedCArScreenState extends State<SelectedCArScreen> {
  @override
  Widget build(BuildContext context) {
    Constant.setupSize(context);
    return WillPopScope(
      onWillPop: () async {
        Constant.backToPrev(context);
        return false;
      },
      child: Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
            child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  Constant.assetImagePath + GetImages.backgroundImage,
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              getVerSpace(16.h),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    useSafeArea: true,
                    isScrollControlled: true,
                    backgroundColor: regularBlack,
                    context: context,
                    builder: (context) {
                      return bottomSheetWidget();
                    },
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 12,
                            color: regularBlack.withOpacity(0.08)),
                      ],
                      borderRadius: BorderRadius.circular(24.h),
                      color: regularWhite),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      getSvgImage(GetIcons.starIcon, height: 24.h, width: 24.h),
                      getCustomFont(S.of(context).getReadyTheDriverWillComeSoon,
                          16.sp, regularBlack, 1)
                    ],
                  ).paddingSymmetric(horizontal: 16.h, vertical: 8.h),
                ),
              )
            ],
          ),
        )),
      ),
    );
  }

  Widget bottomSheetWidget() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: (){

          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  getSvgImage(GetIcons.timerIcon, height: 24.h, width: 24.h),
                  getHorSpace(8.h),
                  getCustomFont(
                      S.of(context).theDriverWillArriveIn, 16.sp, regularWhite, 1,
                      fontWeight: FontWeight.w500),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h), color: lightBlack),
                child: getCustomFont(S.of(context).mins, 14.sp, regularWhite, 1,
                        fontWeight: FontWeight.w500)
                    .paddingSymmetric(horizontal: 8.h, vertical: 7.h),
              )
            ],
          ).paddingAll(20.h),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(24.h),
                  topLeft: Radius.circular(24.h)),
              color: regularWhite),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              getVerSpace(16.h),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.h),
                    border: Border.all(color:borderColor)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        getCustomFont(
                            S.of(context).l2323rf, 18.sp, regularBlack, 1,
                            fontWeight: FontWeight.w500),
                        getVerSpace(4.h),
                        getCustomFont(
                            S.of(context).toyotaHrvBlack, 14.sp, regularBlack, 1,
                            fontWeight: FontWeight.w500)
                      ],
                    ),

                    Container(
                        height: 72.h,
                        width: 128.h,
                        child: Stack(children: [
                          getAssetImage(GetImages.tayotaCAr2ndImage),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(

                              decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.circular(16.h),
                                  color: regularBlack,),
                              child: getCustomFont(S.of(context).mediumSize, 14.sp,
                                  regularWhite, 1,
                                  fontWeight: FontWeight.w500).paddingSymmetric(vertical: 3.h,horizontal: 8.h)
                            ),
                          )
                        ])),
                  ],
                ).paddingOnly(top: 8.h, bottom: 8.h, left: 16.h, right: 16.h),
              ).paddingSymmetric(horizontal: 20.h),
              getVerSpace(20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 60.h,
                            width: 60.h,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.h),
                                image: DecorationImage(image: AssetImage(Constant.assetImagePath+GetImages.userImage),fit: BoxFit.fill)),
                          ),
                          Container(
                            alignment: Alignment.center,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.h),
                                boxShadow: [
                                  BoxShadow(offset: Offset(0, 4),
                                  blurRadius: 11,
                                  color: regularBlack.withOpacity(0.08))
                                ],
                                color: regularWhite),
                            child: Row(
                              children: [
                                getCustomFont(S.of(context).rate, 14.sp, regularBlack, 1,fontWeight: FontWeight.w500),
                                getHorSpace(2.h),
                                getSvgImage(GetIcons.starEmptyIcon,height: 24.h,width: 24.h)
                              ],
                            ).paddingSymmetric(horizontal: 4.h,vertical: 3.h),
                          ).paddingOnly(top: 51.h,left: 8.h,right: 8.h),
                        ],
                      ),
                      getHorSpace(16.h),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          getCustomFont(S.of(context).handokoMulyono, 18.sp, regularBlack, 1,fontWeight: FontWeight.w500),
                          Row(
                            children: [
                              getCustomFont(S.of(context).topRatedDriver, 16.sp, darkGray, 1,fontWeight: FontWeight.w500),
                              getHorSpace(4.h),
                              getSvgImage(GetIcons.trophyIcon)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  Row(
                    children: [
                      callAndMessegeButton(GetIcons.callIcon, (){}),
                      getHorSpace(16.h),
                      callAndMessegeButton(GetIcons.messegeIcon, (){}),
                    ],
                  )
                ],
              ).paddingSymmetric(horizontal: 20.h),
              getVerSpace(16.h),
              getDivider(setColor: dividerColor).paddingSymmetric(horizontal: 20.h),
              getVerSpace(20.h),
              Row(
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
              ).paddingSymmetric(horizontal: 20.h),
              getVerSpace(16.h),
            ],
          ),
        )
      ],
    );
  }

  Widget callAndMessegeButton(image,function){
    return GestureDetector(
      onTap: (){function();},
      child: Container(
        height: 40.h,
        width: 40.h,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: regularBlack
        ),
        child: getSvgImage(image).paddingAll(10.h),
      ),
    );
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
