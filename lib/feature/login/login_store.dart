import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

part 'login_store.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  final TextEditingController edtSenha = TextEditingController();

  @observable
  final TextEditingController edtEmail = TextEditingController();

  @observable
  final TextEditingController edtNome = TextEditingController();

  @observable
  String email = '';

  @observable
  String nome = '';

  @observable
  String senha = '';

  @observable
  bool obscurePassword = true;

  @action
  void setObscurePassword() {
    obscurePassword ? obscurePassword = false : obscurePassword = true;
  }

  @action
  void setEmail(String value) {
    email = value;
  }

  @action
  void setNome(String value) {
    nome = value;
  }

  @action
  void setSenha(String value) {
    senha = value;
  }
}
