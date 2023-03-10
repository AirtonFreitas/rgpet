import 'package:flutter/material.dart';

import '../../../configs/utils/colors_utils.dart';

class AppBarWidget extends StatelessWidget {
  final String title;

  const AppBarWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
        children:[
          const SizedBox(height: 8,),
          Text(title,
              style:  const TextStyle(
                  color: ColorsUtil.white,
                  fontSize: 20)),
        ]);
  }
}
