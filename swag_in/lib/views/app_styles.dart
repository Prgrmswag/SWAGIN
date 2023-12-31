import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const Color kBrown = Color(0xff292526);
const Color kDarkBrown = Color(0xff1B2028);
const Color kBlack = Color(0xff111111);
const Color kGrey = Color(0xffA4AAAD);
const Color kDarkGrey = Color(0xff878787);
const Color kLightGrey = Color(0xffededed);
const Color kWhite = Color(0xffffffff);
const Color kYellow = Color(0xffffd33c);
const Color kBlueBlack = Color(0xff1B2028);
const Color kMetallicYellow = Color(0xffFDCC0D);

const double kBorderRadius = 12.0;
const double kPaddingHorizontal = 24.0;

final kInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.circular(kBorderRadius),
  borderSide: const BorderSide(color: kBlack),
);

final kEncodesansBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w700,
);
final kEncodesansSemiBold = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w600,
);
final kEncodesansMedium = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w500,
);
final kEncodesansregular = GoogleFonts.encodeSans(
  fontWeight: FontWeight.w400,
);
