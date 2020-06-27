import 'package:collect/app/modules/widgets/custom_app_bar/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Observer(
        builder: (context) {
          controller.getCollects();
          return Column(
            children: <Widget>[
              CustomAppBarWidget(
                height: sh * 0.2,
                onPressed: () {
                  controller.getCollects();
                },
                icon: Icon(
                  Icons.refresh,
                  color: Colors.white,
                ),
                title: 'Home',
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: sw * 0.02),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFE000D3),
                        Color(0xFF860BDE),
                      ],
                    ),
                  ),
                  child: controller.coletas != []
                      ? ListView.builder(
                          itemCount: controller.coletas.length,
                          itemBuilder: (context, index) {
                            var item = controller.coletas[index];
                            var text = '';
                            if (item.status == 0) {
                              text = 'Aguardando';
                            }
                            if (item.status == 1) {
                              text = 'Coletado';
                            }
                            if (item.status == 2) {
                              text = 'Entregue';
                            }
                            return GestureDetector(
                              child: Container(
                                padding: EdgeInsets.only(bottom: sh * 0.01),
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: sw * 0.04,
                                      vertical: sh * 0.05),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Expanded(
                                        child: Text(
                                          item.produto,
                                          style: TextStyle(
                                              fontSize: sh * 0.03,
                                              color: Colors.black),
                                        ),
                                      ),
                                      Text(
                                        text,
                                        style: TextStyle(
                                          fontSize: sh * 0.02,
                                          color: item.status != 0
                                              ? Colors.green
                                              : Colors.black,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                        )
                      : Center(
                          child: Text(
                            'Sem pedidos',
                            style: TextStyle(
                                fontSize: sh * 0.03, color: Colors.white),
                          ),
                        ),
                ),
              ),
              SizedBox()
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Modular.to.pushNamed('/coleta');
        },
        backgroundColor: Colors.white,
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
      ),
    );
  }
}
