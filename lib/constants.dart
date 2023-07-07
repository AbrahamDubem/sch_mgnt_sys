import 'package:flutter/material.dart';

//Colors
const Color kPrimaryColor = Color(0xff345fB4);
const Color kSecondaryColor = Color(0xff6789CA);
const Color kTextBlackColor = Color(0xff313131);
const Color kTextWhiteColor = Color(0xffffffff);
const Color kContainerColor = Color(0xff777777);
const Color kTextOtherColor = Color(0xffF4f6f7);
const Color kTextLightColor = Color(0xffa5a5a5);
const Color kErrorBorderColor = Color(0xffe74c3c);

//default value
const kDefaultPadding = 20.0;

const sizedBox = SizedBox(
  height: kDefaultPadding,
);

const kWidthSizedBox = SizedBox(
  height: kDefaultPadding,
);

const kHalfWidthSizedBox = SizedBox(
  height: kDefaultPadding,
);

const kTopBorderRadius = SizedBox(
  height: kDefaultPadding,
);

const kHalfSizeBox = SizedBox(
  height: kDefaultPadding / 2,
);




//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';

//validation for email
const String emailPattern =
    r'^(([^<>()[/]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\';
