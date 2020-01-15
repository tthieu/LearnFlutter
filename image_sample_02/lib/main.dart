import 'package:flutter/material.dart';

void main() => runApp(new LoadingImageApp());

class LoadingImageApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: HomeWidget(),
    );
  }
}

class HomeWidget extends StatelessWidget {
  HomeWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Image"),
      ),
      body: new Center(
        child: FadeInImage.assetNetwork(
            placeholder: 'assets/loading.gif',
            image: 'http://archivision.com/educational/samples/files/1A2-F-P-I-2-C1_L.jpg')
      )
    );
  }
}
