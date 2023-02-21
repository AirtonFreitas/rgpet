// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  late final _$emailAtom =
      Atom(name: '_LoginPageStore.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$nomeAtom = Atom(name: '_LoginPageStore.nome', context: context);

  @override
  String get nome {
    _$nomeAtom.reportRead();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.reportWrite(value, super.nome, () {
      super.nome = value;
    });
  }

  late final _$senhaAtom =
      Atom(name: '_LoginPageStore.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$obscurePasswordAtom =
      Atom(name: '_LoginPageStore.obscurePassword', context: context);

  @override
  bool get obscurePassword {
    _$obscurePasswordAtom.reportRead();
    return super.obscurePassword;
  }

  @override
  set obscurePassword(bool value) {
    _$obscurePasswordAtom.reportWrite(value, super.obscurePassword, () {
      super.obscurePassword = value;
    });
  }

  late final _$_LoginPageStoreActionController =
      ActionController(name: '_LoginPageStore', context: context);

  @override
  void setObscurePassword() {
    final _$actionInfo = _$_LoginPageStoreActionController.startAction(
        name: '_LoginPageStore.setObscurePassword');
    try {
      return super.setObscurePassword();
    } finally {
      _$_LoginPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String value) {
    final _$actionInfo = _$_LoginPageStoreActionController.startAction(
        name: '_LoginPageStore.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_LoginPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNome(String value) {
    final _$actionInfo = _$_LoginPageStoreActionController.startAction(
        name: '_LoginPageStore.setNome');
    try {
      return super.setNome(value);
    } finally {
      _$_LoginPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String value) {
    final _$actionInfo = _$_LoginPageStoreActionController.startAction(
        name: '_LoginPageStore.setSenha');
    try {
      return super.setSenha(value);
    } finally {
      _$_LoginPageStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
nome: ${nome},
senha: ${senha},
obscurePassword: ${obscurePassword}
    ''';
  }
}
