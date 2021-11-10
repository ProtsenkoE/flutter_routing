import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/config/string_constants.dart';
import 'package:flutter_routing/config/styles.dart';
import 'package:flutter_routing/screens/first_screen.dart';

class FirstBtn extends StatelessWidget {
  const FirstBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const FirstScreen(),
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
              firstBtn,
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
