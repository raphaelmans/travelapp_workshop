import 'package:flutter/material.dart';
import 'package:kickngo/constants.dart';

class DrawerButton extends StatelessWidget {
  const DrawerButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(32.0,0.0),
      child: Container(
        height: 55.0,
        width: 55.0,
        decoration: BoxDecoration(
          color: kDrawerColor,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: FlatButton(
          onPressed: () => Scaffold.of(context).openDrawer(),
          child: Image.asset('assets/icons/gg_menu-left.png'),
        ),
      ),
    );
  }
}
