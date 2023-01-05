import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_deneme/core/network/network_manager.dart';
import 'package:mobx_deneme/feature/home/model/home_model.dart';
import 'package:mobx_deneme/feature/home/service/IHomeService.dart';

import '../service/home_service.dart';
part 'home_view_model.g.dart';

class HomeViewModel = HomeViewModelBase with _$HomeViewModel;

abstract class HomeViewModelBase with Store {
  BuildContext? contextt;
  late IHomeService homeService;
  @observable
  List<HomeModel> items = [];
  @observable
  LifeState pageLifes = LifeState.IDLE;
  @computed
  bool get isOdd => count.isOdd;

  @observable
  int count = 0;

  HomeViewModelBase({this.contextt}) {
    homeService = HomeService(NetworkManager.instance.dio);
  }

  void setContext(BuildContext? context) {
    contextt = context;
    fetchItems();
  }

  @action
  Future<void> fetchItems() async {
    pageLifes = LifeState.LOADING;
    items = await homeService.fetchAllHome();
    pageLifes = LifeState.DONE;
  }

  @action
  void onIncrementCount() {
    count += 1;
  }
}

enum LifeState { IDLE, LOADING, DONE }
