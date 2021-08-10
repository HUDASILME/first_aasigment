import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ProductDetails(),
    );
  }
}

class ProductDetails extends StatelessWidget {
  List<SliderModel> imagesPaths = [
    SliderModel('assets/image1.jpeg', 'hello'),
    SliderModel('assets/image2.jpg', 'you are king'),
    SliderModel('assets/image3.jpg', 'ver good'),
  ];
  //coloredFilter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
        ),
        body: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: imagesPaths
                              .map((e) => ImageWidget(e.imagePath, e.title))
                              .toList())),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: imagesPaths
                              .map((e) => ImageWidget(e.imagePath, e.title))
                              .toList())),
                  SizedBox(height: 20),
                  Text('Description',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.w200)),
                  SizedBox(height: 20),
                  Icon(Icons.done_outline),
                  Text('Categiores',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: double.infinity,
                      child: RaisedButton(
                          onPressed: () {},
                          child: Row(children: [
                            Image(image: AssetImage('image1.jpg')),
                            Text('Production Price'),
                            Icon(Icons.stairs)
                          ])))
                ]))));
  }
}

class ImageWidget extends StatelessWidget {
  String title;
  String imagePath;
  ImageWidget(this.imagePath, this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(imagePath))),
      width: 400,
      height: 200,
      child: Text(title,
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
    );
  }
}

class SliderModel {
  String imagePath;
  String title;
  SliderModel(this.imagePath, this.title);
}
