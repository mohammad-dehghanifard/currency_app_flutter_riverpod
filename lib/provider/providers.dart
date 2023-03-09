import 'package:currency_app_riverpod/model/currency_model.dart';
import 'package:currency_app_riverpod/service/currency_api_notifire.dart';
import 'package:currency_app_riverpod/service/get_api_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


  final apiProvider = Provider<GetApiService>((ref) => GetApiService());
  final currencyNotifyProvider = StateNotifierProvider<CurrencyApiNotifier,List<CurrencyModel>>((ref) => CurrencyApiNotifier(ref: ref));


