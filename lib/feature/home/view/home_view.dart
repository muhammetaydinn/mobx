import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx_deneme/feature/home/viewmodel/home_view_model.dart';

import '../../../core/widgets/home_cards.dart';

class HomeView extends StatelessWidget {
  final HomeViewModel _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    if (_viewModel.contextt == null) {
      _viewModel.setContext(context);
    }
    return Scaffold(
      appBar: AppBar(title: observableAppBar()),
      // floatingActionButton: FloatingActionButton(onPressed: () {
      //   _viewModel.onIncrementCount();
      // }),
      body: buildObserverBody(),
    );
  }

  Observer observableAppBar() {
    return Observer(builder: (_) {
      return Visibility(
          visible: _viewModel.pageLifes == LifeState.LOADING,
          child: CircularProgressIndicator(
            color: Colors.red[_viewModel.count % 10 * 100],
          ));
    });
  }

  Observer buildObserverBody() {
    return Observer(builder: (_) {
      return ListView.builder(
        itemCount: _viewModel.items.length,
        itemBuilder: (context, index) {
          return HomeCards(homeModel: _viewModel.items[index]);
        },
      );
    });
  }
}
