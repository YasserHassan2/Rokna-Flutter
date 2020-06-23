
import 'package:flutter/material.dart';
import 'package:flutter_ro/model/MainCategory.dart';

import 'MainCategoryCard.dart';

class MainCategoryList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: mainCategorisList.length,
          itemBuilder: (context,index) => MainCategoryCard(
            itemIndex: index,
            category: mainCategorisList[index],
            press: (){
              print(mainCategorisList[index].title);
            },
          ),
        ),
      ),
    );
  }
}
