import 'package:flutter/material.dart';
import 'package:flutter_ro/model/MainCategory.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Constants.dart';




class MainCategoryCard extends StatelessWidget {
  final int itemIndex;
  final MainCategory category;
  final Function press;

  const MainCategoryCard({Key key, this.itemIndex, this.category, this.press}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12)
        ),
        margin: EdgeInsets.all(8),
    height: 100,
    width: double.infinity,
    child: InkWell(
      borderRadius: BorderRadius.circular(22),
      onTap: press,
      child: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22)
            ),
            child: ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.black87.withOpacity(0.5), BlendMode.dstATop),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(22),
                child: Image(
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: NetworkImage(category.imgUrl),
                ),
              ),
            ),
          ),Center(
            child: Text(category.title,style:TextStyle(
              color: Colors.black,
              fontSize: 25
            ),),
          )
        ],
      ),
    ));
  }
}
