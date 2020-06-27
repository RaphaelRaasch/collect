import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:mobx/mobx.dart';

import 'colect_model.dart';

part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  List<ColetaModel> model;

  @observable
  List<ColetaModel> coletas = [];
  @action
  Future getCollects() async {
    final QuerySnapshot coleta =
        await Firestore.instance.collection('coleta').getDocuments();
    coletas =
        coleta.documents.map((data) => ColetaModel.fromDocument(data)).toList();
  }
}
