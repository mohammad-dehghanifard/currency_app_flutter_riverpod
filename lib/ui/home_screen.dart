import 'package:currency_app_riverpod/common/colors/app_colors.dart';
import 'package:currency_app_riverpod/common/widget/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGerundColor,
      appBar: customAppBar(
        title: Image.asset("assets/images/logo.png",width: 200),
        leading: Icon(Icons.menu_sharp,color: Colors.white.withOpacity(0.6),size: 32),
        leadingOntap: () {},
        actions: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: AppColors.scaffoldBackGerundColor,
                shape: BoxShape.circle,
                border: Border.all(color: AppColors.lightGrayColor,width: 2.5)
            ),
            child: IconButton(
              onPressed: () {},
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Image.asset("assets/images/refresh_icon.png"),
            ),
          )
        ],
      ),
      body: Column(
        children: [


        ],
      ),
    );
  }


}
