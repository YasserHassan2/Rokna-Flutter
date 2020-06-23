import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_ro/Screens/main/components/MainCategoryCard.dart';

import 'MainCategoryList.dart';

class CarouselDemo extends StatefulWidget {
  CarouselDemo() : super();

  final String title = "Carousel Demo";

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<CarouselDemo> {
  //
  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/99404675_1530223533821568_727090628378230784_n.jpg?_nc_cat=100&_nc_sid=2d5d41&_nc_eui2=AeGfvPvvAnMS7iEFrOLylnbOeePSr1VV4eJ549KvVVXh4lnh0EnUM1bwDF_FAi3ZPS-51rPdisA3MUxPSFxpMrZT&_nc_oc=AQlrhB-J6L1FoR2SzuRud-OmdxT6LhHqkQfSl9ZnimlrNdzjdrITkdMTCmxF1x_Tc1w&_nc_ht=scontent-hbe1-1.xx&oh=8237f9ec23583422971a05e4c49bc64b&oe=5F115A7D',
    'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.0-9/52637325_1154327728077819_6054237087861833728_n.jpg?_nc_cat=110&_nc_sid=0be424&_nc_eui2=AeGXGLKI3Y4q_gcPkfKLp9Xl8MQNdE8KktPwxA10TwqS05YBs2hzPD6egcNnwP9iKJ10dykiIPRVRKV_c7X4wp47&_nc_oc=AQlS_2Yi2Bv7wZnPT74nhjgww77z675Zzf5QT1FZLvgVclX3YS74VoyusyAKygH64AQ&_nc_ht=scontent-hbe1-1.xx&oh=6e4465de950c519613c6d40ec02a71f9&oe=5F10CA8B',
    'https://images.unsplash.com/photo-1536679545597-c2e5e1946495?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1543922596-b3bbaba80649?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
    'https://images.unsplash.com/photo-1502943693086-33b5b1cfdf2f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80'
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            carouselSlider = CarouselSlider(
              height: 200.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              reverse: false,
              enableInfiniteScroll: true,
              autoPlayInterval: Duration(seconds: 6),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 4.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          imgUrl,
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.grey : Colors.black,
                  ),
                );
              }),
            ),
            MainCategoryList(),
          ],
        ),
      ),
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}