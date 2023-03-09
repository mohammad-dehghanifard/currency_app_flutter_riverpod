import 'package:currency_app_riverpod/common/colors/app_colors.dart';
import 'package:currency_app_riverpod/common/style/text_style.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatelessWidget {
  const CurrencyItem({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.lightGrayColor,
          borderRadius: BorderRadius.circular(32),
          border: Border.all(color: AppColors.borderColor)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("دلار امریکا",style: AppTextStyle.titleStyle.apply(color: Colors.white)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("50%",style: AppTextStyle.titleStyle.apply(color: AppColors.greenColor)),
              Text("55000",style: AppTextStyle.titleStyle),
            ],
          )
        ],
      ),
    );
  }
}