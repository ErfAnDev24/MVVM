import 'package:get_it/get_it.dart';
import 'package:mvvm/services/NetworkApi.dart';
import 'package:mvvm/services/NetworkApiImpl.dart';
import 'package:mvvm/viewModel/CoinListViewModel.dart';

void initServiceLocator() {
  GetIt.I.registerSingleton<NetworkApi>(NetworkApiImpl());
  GetIt.I.registerFactory<CoinListViewModel>(() => CoinListViewModel());
}
