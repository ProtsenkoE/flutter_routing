import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/config/string_constants.dart';
import 'package:flutter_routing/config/styles.dart';
import 'package:flutter_routing/widgets/app_bar.dart';
import 'package:flutter_routing/widgets/back_btn.dart';
import 'package:flutter_routing/widgets/second_btn.dart';
import 'package:flutter_routing/widgets/third_btn.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool? isHasActiveRouteBelow = ModalRoute.of(context)?.hasActiveRouteBelow;

    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              firstScreen,
              style: Styles.titleStyle,
            ),
            const SizedBox(height: 50),
            const SecondBtn(),
            const SizedBox(height: 10),
            const ThirdBtn(),
            const SizedBox(height: 50),
            BackBtn(isHasActiveRouteBelow: isHasActiveRouteBelow),
          ],
        ),
      ),
    );
  }
}
