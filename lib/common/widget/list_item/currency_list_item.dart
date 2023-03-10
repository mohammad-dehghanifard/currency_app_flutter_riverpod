import 'package:currency_app_riverpod/common/colors/app_colors.dart';
import 'package:currency_app_riverpod/common/style/text_style.dart';
import 'package:currency_app_riverpod/model/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyItem extends StatelessWidget {
  const CurrencyItem({required this.item,super.key,});
  final CurrencyModel item;
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
          Text(item.title!,style: AppTextStyle.titleStyle.apply(color: Colors.white)),
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(item.changes!,style: AppTextStyle.titleStyle.apply(color: item.status == "p"? AppColors.greenColor : Colors.red)),
              Text(item.price!,style: AppTextStyle.titleStyle),
            ],
          )
        ],
      ),
    );
  }
}