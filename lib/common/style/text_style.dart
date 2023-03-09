import 'dart:ui';
import 'package:currency_app_riverpod/common/colors/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyle{
  AppTextStyle._();
  static  TextStyle titleStyle = GoogleFonts.vazirmatn(fontSize: 20,fontWeight: FontWeight.bold,color: AppColors.lightGrayTextColor);
  static  TextStyle descriptionStyle = GoogleFonts.vazirmatn(fontSize: 16,color: Colors.white);
}