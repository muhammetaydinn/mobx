// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on HomeViewModelBase, Store {
  Computed<bool>? _$isOddComputed;

  @override
  bool get isOdd => (_$isOddComputed ??=
          Computed<bool>(() => super.isOdd, name: 'HomeViewModelBase.isOdd'))
      .value;

  late final _$itemsAtom =
      Atom(name: 'HomeViewModelBase.items', context: context);

  @override
  List<HomeModel> get items {
    _$itemsAtom.reportRead();
    return super.items;
  }

  @override
  set items(List<HomeModel> value) {
    _$itemsAtom.reportWrite(value, super.items, () {
      super.items = value;
    });
  }

  late final _$pageLifesAtom =
      Atom(name: 'HomeViewModelBase.pageLifes', context: context);

  @override
  LifeState get pageLifes {
    _$pageLifesAtom.reportRead();
    return super.pageLifes;
  }

  @override
  set pageLifes(LifeState value) {
    _$pageLifesAtom.reportWrite(value, super.pageLifes, () {
      super.pageLifes = value;
    });
  }

  late final _$countAtom =
      Atom(name: 'HomeViewModelBase.count', context: context);

  @override
  int get count {
    _$countAtom.reportRead();
    return super.count;
  }

  @override
  set count(int value) {
    _$countAtom.reportWrite(value, super.count, () {
      super.count = value;
    });
  }

  late final _$fetchItemsAsyncAction =
      AsyncAction('HomeViewModelBase.fetchItems', context: context);

  @override
  Future<void> fetchItems() {
    return _$fetchItemsAsyncAction.run(() => super.fetchItems());
  }

  late final _$HomeViewModelBaseActionController =
      ActionController(name: 'HomeViewModelBase', context: context);

  @override
  void onIncrementCount() {
    final _$actionInfo = _$HomeViewModelBaseActionController.startAction(
        name: 'HomeViewModelBase.onIncrementCount');
    try {
      return super.onIncrementCount();
    } finally {
      _$HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
items: ${items},
pageLifes: ${pageLifes},
count: ${count},
isOdd: ${isOdd}
    ''';
  }
}
