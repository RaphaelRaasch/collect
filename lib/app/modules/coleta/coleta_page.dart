import 'package:collect/app/modules/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:collect/app/modules/widgets/custom_input/custom_input_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'coleta_controller.dart';

class ColetaPage extends StatefulWidget {
  final String title;
  const ColetaPage({Key key, this.title = "Coleta"}) : super(key: key);

  @override
  _ColetaPageState createState() => _ColetaPageState();
}

class _ColetaPageState extends ModularState<ColetaPage, ColetaController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(body: Observer(
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFE000D3),
                Color(0xFF860BDE),
              ],
            ),
          ),
          height: sh,
          child: Column(
            children: <Widget>[
              CustomAppBarWidget(
                title: 'Adicionar Coleta',
                height: sh * 0.1,
                onPressed: () {},
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: sw * 0.03),
                  child: ListView(
                    children: [
                      CustomInputWidget(
                          type: TextInputType.text,
                          height: sh * 0.09,
                          hint: 'Descrição',
                          horizontal: sw * 0.02,
                          vertical: sh * 0.01,
                          onChanged: (value) {
                            controller.produto = value;
                          }),
                      CustomInputWidget(
                          type: TextInputType.text,
                          height: sh * 0.09,
                          hint: 'Local Coleta',
                          horizontal: sw * 0.02,
                          vertical: sh * 0.01,
                          onChanged: (value) {
                            controller.local = value;
                          }),
                      CustomInputWidget(
                          type: TextInputType.text,
                          height: sh * 0.09,
                          hint: 'Rua',
                          horizontal: sw * 0.02,
                          vertical: sh * 0.01,
                          onChanged: (value) {
                            controller.rua = value;
                          }),
                      CustomInputWidget(
                          type: TextInputType.number,
                          height: sh * 0.09,
                          hint: 'Numero',
                          horizontal: sw * 0.02,
                          vertical: sh * 0.01,
                          onChanged: (value) {
                            controller.numero = value;
                          }),
                      CustomInputWidget(
                          type: TextInputType.text,
                          height: sh * 0.09,
                          hint: 'Bairro',
                          horizontal: sw * 0.02,
                          vertical: sh * 0.01,
                          onChanged: (value) {
                            controller.bairro = value;
                          }),
                      CustomInputWidget(
                          type: TextInputType.text,
                          height: sh * 0.09,
                          hint: 'Municipio',
                          horizontal: sw * 0.02,
                          vertical: sh * 0.01,
                          onChanged: (value) {
                            controller.municipio = value;
                          }),
                      Container(
                        height: sh * 0.09,
                        child: Row(
                          children: [
                            Expanded(
                              child: CustomInputWidget(
                                  type: TextInputType.text,
                                  height: sh * 0.09,
                                  hint: 'Estado',
                                  horizontal: sw * 0.02,
                                  vertical: sh * 0.01,
                                  onChanged: (value) {
                                    controller.estado = value;
                                  }),
                            ),
                            SizedBox(
                              width: sw * 0.02,
                            ),
                            Expanded(
                              child: CustomInputWidget(
                                  type: TextInputType.number,
                                  height: sh * 0.09,
                                  hint: 'Peso',
                                  horizontal: sw * 0.02,
                                  vertical: sh * 0.01,
                                  onChanged: (value) {
                                    controller.peso = value;
                                  }),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: sh * 0.10,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE000D3),
                              Color(0xFF860BDE),
                            ],
                          ),
                        ),
                        child: FlatButton(
                          onPressed: () async {
                            await controller.addColeta();
                            Modular.to.pop();
                          },
                          child: Text(
                            'Adicionar',
                            style: TextStyle(
                                fontSize: sh * 0.02, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox()
            ],
          ),
        );
      },
    ));
  }
}
