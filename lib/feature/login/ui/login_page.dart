import 'package:flutter/material.dart';

import '../components/text_fields_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(padding: const EdgeInsets.all(32),
        child: _body(),
      ),
    );
  }

  Widget _body() {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children: const [
         TextFieldRgPet(hint: 'nome', obscureText: false, textSuffix: '', iconSufix: Icon(Icons.person)),
         SizedBox(height: 16,),
          TextFieldRgPet(hint: 'email', obscureText: false, textSuffix: '@', iconSufix: Icon(Icons.mail)),
         SizedBox(height: 16,),
         TextFieldRgPet(hint: 'senha', obscureText: true,textSuffix: '',iconSufix: Icon(Icons.remove_red_eye)),
      ],
    );
  }
}
