// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$coletasAtom = Atom(name: '_HomeControllerBase.coletas');

  @override
  List<ColetaModel> get coletas {
    _$coletasAtom.reportRead();
    return super.coletas;
  }

  @override
  set coletas(List<ColetaModel> value) {
    _$coletasAtom.reportWrite(value, super.coletas, () {
      super.coletas = value;
    });
  }

  final _$getCollectsAsyncAction =
      AsyncAction('_HomeControllerBase.getCollects');

  @override
  Future<dynamic> getCollects() {
    return _$getCollectsAsyncAction.run(() => super.getCollects());
  }

  @override
  String toString() {
    return '''
coletas: ${coletas}
    ''';
  }
}
