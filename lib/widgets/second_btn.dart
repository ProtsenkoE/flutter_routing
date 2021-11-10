import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/config/string_constants.dart';
import 'package:flutter_routing/config/styles.dart';
import 'package:flutter_routing/screens/second_screen.dart';

class SecondBtn extends StatelessWidget {
  const SecondBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const SecondScreen(),
          ),
        );
      },
      child: Container(
        height: 40,
        width: 200,
        decoration: Styles.btnStyle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              secondBtn,
              style: Styles.btnStyleText,
            ),
            const SizedBox(width: 5),
            const Icon(
              Icons.arrow_right,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
