import 'package:mobx/mobx.dart';
part 'store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {  
  @observable
  String _country = 'us';

  @action
  void addCountry(String country) {
    _country = country;
  }

  @computed
  String get countrs => _country;
}