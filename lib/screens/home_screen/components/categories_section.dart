import 'package:flutter/material.dart';
import 'package:kickngo/constants.dart';

class CategoriesSection extends StatefulWidget {
  @override
  _CategoriesSectionState createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {
  String currentActive;

  void setActive(text) {
    setState(() {
      if(currentActive == text)
        currentActive = null;
      else
        currentActive = text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Category', style: kHeadingTextStyle),
          SizedBox(
            height: 24,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CategoryButton(
                text: 'Beach',
                image: Image.asset('assets/icons/beach.png'),
                circleColor: Color(0xff24A3B7),
                isActive: 'Beach' == currentActive,
                press: setActive,
              ),
              CategoryButton(
                text: 'Food',
                image: Image.asset('assets/icons/food.png'),
                circleColor: Color(0xffFF6B6B),
                isActive: 'Food' == currentActive,
                press: setActive,
              ),
              CategoryButton(
                text: 'Hotel',
                image: Image.asset('assets/icons/hotel.png'),
                circleColor: Color(0xffDCC96D),
                isActive: 'Hotel' == currentActive,
                press: setActive,
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  CategoryButton({
    Key key,
    @required this.text,
    @required this.image,
    @required this.circleColor,
    this.isActive = false,
    this.press,
  }) : super(key: key);

  final bool isActive;
  final String text;
  final Widget image;
  final Color circleColor;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        press(text);
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 250),
        height: isActive ? 100 : 130,

        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0,vertical: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundColor: circleColor,
                radius: 28.0,
                child: image,
              ),
              isActive
                  ? SizedBox.shrink()
                  : Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Text(
                        text,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .copyWith(color: kPrimaryTextColor),
                    ),
                      )),
            ],
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          border: Border.all(color:  kCBorderColor,
          width: isActive ? 2.0 : 1.0,
          )
        ),
      ),
    );
  }
}
