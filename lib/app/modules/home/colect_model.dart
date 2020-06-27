import 'package:cloud_firestore/cloud_firestore.dart';

class ColetaModel {
  String id;

  String descricao;
  String nome;
  String produto;
  String rua;
  String estado;
  String municipio;
  String bairro;
  String numero;
  String local;

  String peso;
  int status;

  ColetaModel.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.documentID;
    nome = snapshot['nome'];
    descricao = snapshot['descricao'];
    produto = snapshot['produto'];
    rua = snapshot['rua'];
    estado = snapshot['estado'];
    municipio = snapshot['municipio'];
    bairro = snapshot['bairro'];
    numero = snapshot['numero'];
    local = snapshot['local'];
    status = snapshot['status'];
    peso = snapshot['peso'];
  }
}
