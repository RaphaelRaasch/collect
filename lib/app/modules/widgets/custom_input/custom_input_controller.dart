import 'package:mobx/mobx.dart';

part 'custom_input_controller.g.dart';

class CustomInputController = _CustomInputControllerBase
    with _$CustomInputController;

abstract class _CustomInputControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
