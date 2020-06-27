
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:mobx/mobx.dart';

import '../user_store_store.dart';

part 'login_controller.g.dart';

class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final UserStoreStore store;
  @observable
  String email = '';
  @observable
  String password = '';
  @observable
  bool visible = false;

  _LoginControllerBase(this.store);

  @action
  void setVisible() {
    visible = !visible;
  }

  Future<FirebaseUser> _handleSignIn() async {
    GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    GoogleSignInAuthentication googleAuth = await googleUser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final FirebaseUser user =
        (await _auth.signInWithCredential(credential)).user;
    print("signed in " + user.displayName);
    print(user.displayName);
    print(user.photoUrl);
    var usuario = user.email;
    print('usuario: $usuario');
    store.setUser(usuario);
    return user;
  }

  @action
  Future login() async {
    await _handleSignIn()
        .then((FirebaseUser user) => print(user))
        .catchError((e) => print(e));
    Modular.to.pushReplacementNamed('/home');
  }

  @action
  Future register() async {
    FirebaseUser user = (await _auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    ))
        .user;
    Modular.to.pushReplacementNamed('/home');
  }
}
