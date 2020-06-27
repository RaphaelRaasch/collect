// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStoreStore on _UserStoreStoreBase, Store {
  final _$userAtom = Atom(name: '_UserStoreStoreBase.user');

  @override
  dynamic get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(dynamic value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$_UserStoreStoreBaseActionController =
      ActionController(name: '_UserStoreStoreBase');

  @override
  void setUser(dynamic v) {
    final _$actionInfo = _$_UserStoreStoreBaseActionController.startAction(
        name: '_UserStoreStoreBase.setUser');
    try {
      return super.setUser(v);
    } finally {
      _$_UserStoreStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
user: ${user}
    ''';
  }
}
