import 'package:currency_app_riverpod/common/api/api_links.dart';
import 'package:currency_app_riverpod/model/currency_model.dart';
import 'package:dio/dio.dart';

class GetApiService{
  Dio dio = Dio();

  Future sendRequest() async {
    var response = await dio.get(ApiLinks.baseApiUrl);
    try{
      if(response.statusCode == 200){
        return response.data;
      }
    }catch(e){
      throw Exception("خطایی به وجود آمده است");
    }
  }

  Future<List<CurrencyModel>> fetchData() async {
    final result = await sendRequest();
    List<CurrencyModel> items = (result as List).map((e) => CurrencyModel.fromJson(e)).toList();
    print(items.length);
    return items;
  }
}