import 'package:mobx/mobx.dart';

part 'main_store.g.dart';

class MainStore = _MainStore with _$MainStore;

abstract class _MainStore with Store {
  @observable
  String email = "";

  @observable
  String password = "";

  @observable
  String phoneNumber = "";

  @action
  void setPhoneNumber(value) {
    phoneNumber = value;
  }

  @action
  void setEmail(value) {
    email = value;
  }

  @action
  void setPassword(value) {
    password = value;
  }
}
