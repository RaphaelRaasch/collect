import 'package:collect/app/modules/login/widgets/custom_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Observer(
        builder: (context) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                colors: [
                  Color(0xFFE000D3),
                  Color(0xFF860BDE),
                ],
              ),
            ),
            child: Column(
              children: [
                SizedBox(),
                Expanded(
                  child: Container(
                    child: Center(
                      child: SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: sw * 0.05),
                          height: sh * 0.6,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: sh * 0.4,
                              ),
                              CustomFormField(
                                ktype: TextInputType.emailAddress,
                                ph: sh * 0.02,
                                fs: 20.0,
                                height: sh * 0.09,
                                prefix: Icon(Icons.person),
                                hint: 'Email',
                                suffix: SizedBox(),
                                obscure: false,
                                onChanged: (value) {
                                  controller.email = value;
                                },
                              ),
                              CustomFormField(
                                ktype: TextInputType.text,
                                obscure:
                                    controller.visible == false ? true : false,
                                fs: 20.0,
                                ph: sh * 0.02,
                                height: sh * 0.09,
                                prefix: Icon(Icons.lock),
                                hint: 'Password',
                                suffix: IconButton(
                                  icon: Icon(Icons.visibility),
                                  onPressed: () {
                                    controller.setVisible();
                                  },
                                ),
                                onChanged: (value) {
                                  controller.password = value;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(),
                Container(
                  width: double.maxFinite,
                  height: sh * 0.12,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                controller.register();
                              },
                              child: Text(
                                'REGISTRAR',
                                style: TextStyle(
                                  fontSize: sh * 0.02,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: FlatButton(
                              onPressed: () {
                                controller.login();
                              },
                              child: Text(
                                'ENTRAR',
                                style: TextStyle(
                                  fontSize: sh * 0.02,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
