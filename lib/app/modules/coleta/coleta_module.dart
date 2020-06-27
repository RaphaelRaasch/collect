import 'coleta_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:dio/dio.dart';
import 'coleta_page.dart';

class ColetaModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ColetaController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, args) => ColetaPage()),
      ];

  static Inject get to => Inject<ColetaModule>.of();
}
