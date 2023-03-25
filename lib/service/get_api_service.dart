import 'package:currency_app_riverpod/common/api/api_links.dart';
import 'package:currency_app_riverpod/model/currency_model.dart';
import 'package:dio/dio.dart';

class GetApiService {
  Dio dio = Dio();

  // تابع ارسال درخواست به API
  Future sendRequest() async {
    // ارسال درخواست HTTP GET به آدرس API مورد نظر
    var response = await dio.get(ApiLinks.baseApiUrl);
    try{
      // در صورتی که پاسخ با کد وضعیت 200 برگشت داده شود، داده ها رو برمیگردونه.
      if(response.statusCode == 200){
        return response.data;
      }
    } catch(e) {
      // در صورت بروز خطا، یک استثناء را پرتاب می‌کند.
      throw Exception("خطایی به وجود آمده است");
    }
  }

  // تابع دریافت داده‌های API و تبدیل به یک لیست از شیء‌های CurrencyModel
  Future<List<CurrencyModel>> fetchData() async {
    // ارسال درخواست به API و دریافت داده‌ها
    final result = await sendRequest();
    // تبدیل داده‌های بازگشتی به یک لیست از شیء‌های CurrencyModel
    List<CurrencyModel> items = (result as List).map((e) => CurrencyModel.fromJson(e)).toList();
    // برگرداندن داده‌های دریافت شده به صورت یک لیست از شیء‌های CurrencyModel
    return items;
  }
}