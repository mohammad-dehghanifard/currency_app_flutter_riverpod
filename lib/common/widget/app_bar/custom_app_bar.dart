import 'package:currency_app_riverpod/common/colors/app_colors.dart';
import 'package:flutter/material.dart';

AppBar customAppBar({required Widget title,required Widget leading,required Function() leadingOntap,required List<Widget> actions}) {
  return AppBar(
    backgroundColor: AppColors.appBarColor,
    elevation: 0,
    automaticallyImplyLeading: false,
    title: title,
    centerTitle: true,
    leading:  IconButton(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      onPressed: leadingOntap,
      icon: leading,
    ),
    actions: actions
  );
}