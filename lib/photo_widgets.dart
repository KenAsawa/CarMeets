import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Slideshow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
}

class SlidingPhotoGallery extends StatelessWidget {
  Image _image1 = Image.asset('assets/images/test.jpg');
  Image _image2 = Image.asset('assets/images/test2.jpg');
  Image _image3 = Image.asset('assets/images/test3.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.count(
        primary: false,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(20.0),
        crossAxisCount: 2,
        children: <Widget>[
          _image1, _image2, _image3
        ],
      ),
    );
  }
}
