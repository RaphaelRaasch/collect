import 'package:mobx/mobx.dart';

part 'user_store_store.g.dart';

class UserStoreStore = _UserStoreStoreBase with _$UserStoreStore;

abstract class _UserStoreStoreBase with Store {
  @observable
  var user;

  @action
  void setUser(v) {
    user = v;
    print(user);
  }
}
