import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

import '../user_store_store.dart';

part 'coleta_controller.g.dart';

class ColetaController = _ColetaControllerBase with _$ColetaController;

abstract class _ColetaControllerBase with Store {
  UserStoreStore store = Modular.get();
  @observable
  String nome = '';
  @observable
  String produto = '';
  @observable
  String rua = '';
  @observable
  String estado = '';
  @observable
  String municipio = '';
  @observable
  String bairro = '';
  @observable
  String numero = '';
  @observable
  String local = '';
  @observable
  String peso = '1';
  @observable
  int status = 0;

  @action
  Future addColeta() async {
    print(store.user);
    Firestore.instance.collection('coleta').document().setData({
      'nome': store.user,
      'produto': produto,
      'rua': rua,
      'numero': numero,
      'bairro': bairro,
      'municipio': municipio,
      'estado': estado,
      'peso': peso,
      'status': status,
      'local': local,
    });
  }
}
