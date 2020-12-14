import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kickngo/constants.dart';
import 'package:kickngo/screens/home_screen/components/bottom_navbar.dart';
import 'components/drawer_button.dart';
import 'body.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBackgroundColor,
        elevation: 0,
        leading: DrawerButton(),
        title: ScreenTitle(),
      ),
      body: SingleChildScrollView(child: Body()),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}





class ScreenTitle extends StatelessWidget {
  const ScreenTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.location_on,
          color: Color(0xffB6CCFE),
        ),
        SizedBox(width: 4.0,),
        Text(
          'Philippines, Cebu',
          style: TextStyle(
            color: kPrimaryTextColor,
          ),
        ),
      ],
    );
  }
}

