import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:rgpet/configs/utils/colors_utils.dart';

import '../components/button_custom_widget.dart';
import '../components/text_fields_widget.dart';
import '../login_store.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginStore = LoginStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.all(32),
      child: Observer(
        builder: (_) {
          return _bodyFields();
        },
      ),
    ));
  }

  Widget _bodyFields() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // TextFieldRgPet(
        //   onChanged: (value) {
        //     print(value);
        //   },
        //   onPressedObscure: () {},
        //   hint: 'nome',
        //   obscureText: false,
        //   iconSufix: const Icon(
        //     Icons.person,
        //     size: 16,
        //   ),
        //   controller: _loginStore.edtNome,
        // ),
        const SizedBox(height: 16),
        TextFieldRgPet(
            onChanged: (value) {
              print(value);
            },
            onPressedObscure: () {},
            hint: 'email',
            obscureText: false,
            textSuffix: '@',
            iconSufix: const Icon(Icons.mail, size: 16),
            controller: _loginStore.edtEmail),
        const SizedBox(height: 16),
        TextFieldRgPet(
            onChanged: (value) {
              print(value);
            },
            onPressedObscure: () {
              _loginStore.setObscurePassword();
            },
            hint: 'senha',
            obscureText: _loginStore.obscurePassword ? false : true,
            iconSufix: _loginStore.obscurePassword
                ? const Icon(Icons.visibility, size: 16)
                : const Icon(Icons.visibility_off, size: 16),
            controller: _loginStore.edtSenha),
        const SizedBox(height: 24),
        ButtonCustomWidget(
            label: 'Entrar',
            backgroundColor: greenPrimaryPalette[100],
            textColor: basicPrimaryPalette[900],
            onPressed: () {
              print('clicou');
            },
            widthButton: 3,
            borderColor: greenPrimaryPalette[300]!),
        const SizedBox(height: 16),
        ButtonCustomWidget(
            label: 'Novo Cadastro',
            backgroundColor: basicPrimaryPalette[100],
            textColor: greenPrimaryPalette[300],
            onPressed: () {
              print('clicou');
            },
            widthButton: 2,
            borderColor: greenPrimaryPalette[300]!),
        const SizedBox(height: 32),
        const Text(
          'ou',
          style: TextStyle(fontFamily: 'AnimalsHouse', fontSize: 18),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/icons/facebook.png',
                  width: 24,
                  height: 24,
                ),
                const Text(
                  'Facebook',
                  style: TextStyle(fontFamily: 'AnimalsHouse', fontSize: 18),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/icons/google.png',
                  width: 24,
                  height: 24,
                ),
                const Text(
                  'Google',
                  style: TextStyle(fontFamily: 'AnimalsHouse', fontSize: 18),
                )
              ],
            ),
            Column(
              children: [
                Image.asset(
                  'assets/icons/anonimo.png',
                  width: 24,
                  height: 24,
                ),
                const Text(
                  'Entrar sem \nlogin',textAlign: TextAlign.center,
                  style: TextStyle(fontFamily: 'AnimalsHouse', fontSize: 18),
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
