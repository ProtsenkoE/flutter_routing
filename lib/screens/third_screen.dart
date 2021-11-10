import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/config/string_constants.dart';
import 'package:flutter_routing/config/styles.dart';
import 'package:flutter_routing/widgets/app_bar.dart';
import 'package:flutter_routing/widgets/back_btn.dart';
import 'package:flutter_routing/widgets/first_btn.dart';
import 'package:flutter_routing/widgets/second_btn.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              thirdScreen,
              style: Styles.titleStyle,
            ),
            const SizedBox(height: 50),
            const FirstBtn(),
            const SizedBox(height: 10),
            const SecondBtn(),
            const SizedBox(height: 50),
            const BackBtn(isHasActiveRouteBelow: true),
          ],
        ),
      ),
    );
  }
}
