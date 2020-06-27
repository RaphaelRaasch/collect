// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coleta_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ColetaController on _ColetaControllerBase, Store {
  final _$nomeAtom = Atom(name: '_ColetaControllerBase.nome');

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  final _$produtoAtom = Atom(name: '_ColetaControllerBase.produto');

  @override
  String get produto {
    _$produtoAtom.reportRead();
    return super.produto;
  }

  @override
  set produto(String value) {
    _$produtoAtom.reportWrite(value, super.produto, () {
      super.produto = value;
    });
  }

  final _$ruaAtom = Atom(name: '_ColetaControllerBase.rua');

  @override
  String get rua {
    _$ruaAtom.reportRead();
    return super.rua;
  }

  @override
  set rua(String value) {
    _$ruaAtom.reportWrite(value, super.rua, () {
      super.rua = value;
    });
  }

  final _$estadoAtom = Atom(name: '_ColetaControllerBase.estado');

  @override
  String get estado {
    _$estadoAtom.reportRead();
    return super.estado;
  }

  @override
  set estado(String value) {
    _$estadoAtom.reportWrite(value, super.estado, () {
      super.estado = value;
    });
  }

  final _$municipioAtom = Atom(name: '_ColetaControllerBase.municipio');

  @override
  String get municipio {
    _$municipioAtom.reportRead();
    return super.municipio;
  }

  @override
  set municipio(String value) {
    _$municipioAtom.reportWrite(value, super.municipio, () {
      super.municipio = value;
    });
  }

  final _$bairroAtom = Atom(name: '_ColetaControllerBase.bairro');

  @override
  String get bairro {
    _$bairroAtom.reportRead();
    return super.bairro;
  }

  @override
  set bairro(String value) {
    _$bairroAtom.reportWrite(value, super.bairro, () {
      super.bairro = value;
    });
  }

  final _$numeroAtom = Atom(name: '_ColetaControllerBase.numero');

  @override
  String get numero {
    _$numeroAtom.reportRead();
    return super.numero;
  }

  @override
  set numero(String value) {
    _$numeroAtom.reportWrite(value, super.numero, () {
      super.numero = value;
    });
  }

  final _$localAtom = Atom(name: '_ColetaControllerBase.local');

  @override
  String get local {
    _$localAtom.reportRead();
    return super.local;
  }

  @override
  set local(String value) {
    _$localAtom.reportWrite(value, super.local, () {
      super.local = value;
    });
  }

  final _$pesoAtom = Atom(name: '_ColetaControllerBase.peso');

  @override
  String get peso {
    _$pesoAtom.reportRead();
    return super.peso;
  }

  @override
  set peso(String value) {
    _$pesoAtom.reportWrite(value, super.peso, () {
      super.peso = value;
    });
  }

  final _$statusAtom = Atom(name: '_ColetaControllerBase.status');

  @override
  int get status {
    _$statusAtom.reportRead();
    return super.status;
  }

  @override
  set status(int value) {
    _$statusAtom.reportWrite(value, super.status, () {
      super.status = value;
    });
  }

  final _$addColetaAsyncAction = AsyncAction('_ColetaControllerBase.addColeta');

  @override
  Future<dynamic> addColeta() {
    return _$addColetaAsyncAction.run(() => super.addColeta());
  }

  @override
  String toString() {
    return '''
nome: ${nome},
produto: ${produto},
rua: ${rua},
estado: ${estado},
municipio: ${municipio},
bairro: ${bairro},
numero: ${numero},
local: ${local},
peso: ${peso},
status: ${status}
    ''';
  }
}
