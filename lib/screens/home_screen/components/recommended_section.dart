import 'package:flutter/material.dart';
import 'package:kickngo/constants.dart';

class RecommendedSection extends StatelessWidget {
  const RecommendedSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Recommended',style: kHeadingTextStyle,),
          SizedBox(
            height: 24,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                RecommendedPlace(
                    text: 'Logon,\nMalapascua',
                    image: AssetImage(
                      'assets/images/malapscua_beach.jpg',
                    )
                ),
                RecommendedPlace(
                    text: 'Yahay FoodPark,\nTalisay',
                    image: AssetImage(
                      'assets/images/yahay_foodpark.jpg',
                    )
                ),
                RecommendedPlace(
                    text: "Shangri-La's,\nMactan",
                    image: AssetImage(
                      'assets/images/hotel_mactan.jpg',
                    )
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class RecommendedPlace extends StatelessWidget {
  const RecommendedPlace({
    Key key, @required this.image, this.text,
  }) : super(key: key);

  final ImageProvider image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 36.0),
      height: 190,
      width: 120,

      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            fit: BoxFit.cover,
            image:  image,
          )
      ),
      alignment: Alignment.bottomLeft,
      padding: EdgeInsets.all(12.0),
      child: Text(text,style: TextStyle(
        color: Color(0xffF7FFF7),
      ),),
    );
  }
}