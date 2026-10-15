import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mandirapp/common/values/screenUtils.dart';
import 'package:mandirapp/l10n/l10n_extension.dart';

import '../values/app_color.dart';
import '../values/fonts.dart';


class CameraGalleryDialogMobile extends StatelessWidget {
  final title;

  final VoidCallback onCameraTap;
  final VoidCallback onGalleryTap;

  CameraGalleryDialogMobile(
    this.onCameraTap,
    this.onGalleryTap,
    this.title,
  );

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 4.0,
        sigmaY: 4.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: AppColor.appBlack.withOpacity(0.25),
              offset: const Offset(
                0.54,
                0.54,
              ),
              blurRadius: 100.0,
              spreadRadius: 10.0,
            ),
            //BoxShadow
          ],
        ),
        child: AlertDialog(
          contentPadding: EdgeInsets.zero,
          buttonPadding: EdgeInsets.zero,
          elevation: 10.0,
          shadowColor: Colors.black.withOpacity(0.5),
          backgroundColor: AppColor.appWhiteColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          content: Padding(
            padding: const EdgeInsets.only(
                left: 12.0, right: 12.0, top: 4.0, bottom: 10.0),
            child: Container(
              //   padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 16.0,bottom: 16.0),
              padding: EdgeInsets.zero,

              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 4.0, right: 2.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.cancel),
                        ),
                      )
                    ],
                  ),
                  Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: context.screenWidth * 0.05,
                      color: AppColor.appBlack,
                      fontFamily: AppFont.interBold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  const SizedBox(height: 16.0),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 2,
                      right: 2,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              onCameraTap();
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0.0),
                              width: context.screenWidth * 0.2,
                              height: context.screenHeight * 0.1,
                              child: Column(
                                children: [
                                  Center(
                                      child: Icon(
                                        Icons.camera_alt_outlined,
                                    size: context.screenWidth * 0.09,
                                    color: AppColor.appcolor,
                                  )),
                                  Text(context.l10n.camera,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: context.screenWidth * 0.035,
                                      color: AppColor.appBlack,
                                      fontFamily: AppFont.interBold,
                                    ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              onGalleryTap();
                              Navigator.pop(context);
                            },
                            child: Container(
                              padding: const EdgeInsets.all(0.0),
                              width: context.screenWidth * 0.2,
                              height: context.screenHeight * 0.1,
                              child: Column(
                                children: [
                                  Center(
                                      child: Icon(
                                    CupertinoIcons.folder,
                                    size: context.screenWidth * 0.09,
                                    color: AppColor.appcolor,
                                  )),
                                  Text(context.l10n.gallery,textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: context.screenWidth * 0.035,
                                      color: AppColor.appBlack,
                                      fontFamily: AppFont.interBold,
                                    ),)
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
