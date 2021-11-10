import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_routing/config/string_constants.dart';
import 'package:flutter_routing/config/styles.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({
    Key? key,
    this.isHasActiveRouteBelow,
  }) : super(key: key);

  final bool? isHasActiveRouteBelow;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isHasActiveRouteBelow == true) {
          Navigator.pop(context);
        }
      },
      child: Visibility(
        visible: isHasActiveRouteBelow == true,
        child: Container(
          height: 40,
          width: 100,
          decoration: Styles.btnStyle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.arrow_left,
                color: Colors.white,
              ),
              Text(
                backBtn,
                style: Styles.btnStyleText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
