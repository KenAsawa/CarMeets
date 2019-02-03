import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class Slideshow extends StatelessWidget {
  final Image _image1 = Image.asset('assets/images/test.jpg');
  final Image _image2 = Image.asset('assets/images/test2.jpg');
  final Image _image3 = Image.asset('assets/images/test3.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: CarouselSlider(
                viewportFraction: 1.0, items: [_image1, _image2, _image3])));
  }
}

class SlidingPhotoGallery extends StatelessWidget {
  final Image _image1 = Image.asset('assets/images/test.jpg');
  final Image _image2 = Image.asset('assets/images/test2.jpg');
  final Image _image3 = Image.asset('assets/images/test3.jpg');

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      child: GridView.count(
        primary: false,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(20.0),
        crossAxisCount: 2,
        children: <Widget>[_image1, _image2, _image3],
      ),
    );
  }
}
