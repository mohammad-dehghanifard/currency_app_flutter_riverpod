import 'package:currency_app_riverpod/model/currency_model.dart';
import 'package:currency_app_riverpod/provider/providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CurrencyApiNotifier extends StateNotifier<List<CurrencyModel>>{
  final Ref ref;

  CurrencyApiNotifier({required this.ref}) : super([]){
    notifyCurrency(ref); // تابع notifyCurrency را برای دسترسی به داده‌های API فراخوانی می‌کند
  }

  // تابع اطلاع‌رسانی از تغییرات داده‌های API
  Future notifyCurrency(Ref ref) async {
    // دریافت داده‌های API با استفاده از provider apiProvider و تابع fetchData آن
    await ref.read(apiProvider).fetchData().then((value) => state = value);
  }
}