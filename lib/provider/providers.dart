import 'package:currency_app_riverpod/model/currency_model.dart';
import 'package:currency_app_riverpod/service/currency_api_notifire.dart';
import 'package:currency_app_riverpod/service/get_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


// ایجاد یک provider به نام apiProvider که شامل یک instance از GetApiService است
final apiProvider = Provider<GetApiService>((ref) => GetApiService());

// ایجاد یک StateNotifierProvider به نام currencyNotifyProvider که شامل یک instance از CurrencyApiNotifier است و با استفاده از apiProvider به داده‌های API دسترسی دارد
final currencyNotifyProvider = StateNotifierProvider<CurrencyApiNotifier,List<CurrencyModel>>((ref) => CurrencyApiNotifier(ref: ref));

