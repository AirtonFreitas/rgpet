import 'package:flutter/material.dart';
import 'package:rgpet/configs/utils/colors_utils.dart';
import 'package:rgpet/feature/home/components/card_docs_widget.dart';
import 'package:rgpet/feature/utils/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        elevation: 3,
        backgroundColor: ColorsUtil.green,
        title: const AppBarWidget(title: 'Documento Pet'),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(children: [
      const CardDocumentos(),


      TextField(onSubmitted: (value) {
        email = value;
      },),



      GestureDetector(onTap: (){

      },
      child: const Text('clique aqui')
      )
    ],);
  }

}
