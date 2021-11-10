import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/config/string_constants.dart';
import 'package:flutter_routing/config/styles.dart';
import 'package:flutter_routing/widgets/app_bar.dart';
import 'package:flutter_routing/widgets/back_btn.dart';
import 'package:flutter_routing/widgets/first_btn.dart';
import 'package:flutter_routing/widgets/third_btn.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              secondScreen,
              style: Styles.titleStyle,
            ),
            const SizedBox(height: 50),
            const FirstBtn(),
            const SizedBox(height: 10),
            const ThirdBtn(),
            const SizedBox(height: 50),
            const BackBtn(isHasActiveRouteBelow: true),
          ],
        ),
      ),
    );
  }
}
