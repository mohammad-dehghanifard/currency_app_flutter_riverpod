import 'package:currency_app_riverpod/common/colors/app_colors.dart';
import 'package:currency_app_riverpod/common/style/text_style.dart';
import 'package:currency_app_riverpod/common/widget/app_bar/custom_app_bar.dart';
import 'package:currency_app_riverpod/provider/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../common/widget/list_item/currency_list_item.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(currencyNotifyProvider);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.scaffoldBackGerundColor,
      appBar: customAppBar(
        title: Image.asset("assets/images/logo.png", width: 200),
        leading: Icon(Icons.menu_sharp,
            color: Colors.white.withOpacity(0.6), size: 32),
        leadingOntap: () {},
        actions: [
          Container(
            width: 50,
            height: 50,
            margin: const EdgeInsets.all(4),
            decoration: BoxDecoration(
                color: AppColors.scaffoldBackGerundColor,
                shape: BoxShape.circle,
                border:
                    Border.all(color: AppColors.lightGrayColor, width: 2.5)),
            child: IconButton(
              onPressed: () {},
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Image.asset("assets/images/refresh_icon.png"),
            ),
          )
        ],
      ),
      body: SizedBox(
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                  child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text(
                        "لیست ارز ها :",
                        style: AppTextStyle.titleStyle,
                      ))),
              const SizedBox(height: 8),

              //currency list
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 1.7,
                      mainAxisSpacing: 8,
                      crossAxisSpacing: 12),
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    return  CurrencyItem(item: data[index],);
                  },
                ),
              ),

              const SizedBox(height: 8),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "نرخ ارز آزاد چیست؟",
                    style: AppTextStyle.titleStyle,
                  )),
              const SizedBox(height: 14),
              Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "نرخ ارزها در معاملات نقدی و رایج روزانه است معاملات نقدی معاملاتی هستند که خریدار و فروشنده به محض انجام معامله، ارز و ریال را با هم تبادل می نمایند",
                    style: AppTextStyle.descriptionStyle,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
