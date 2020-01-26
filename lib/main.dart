import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.orange),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Resim ekleme türleri"),
        ),
        body: ImageTurleri(),
      ),
    );
  }
}

class ImageTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      width: double.infinity,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                    //internetten linkini verdiğin fotoyu yükler
                    child: Image.network(
                        "https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647")),
              ), //ekrana sığrırı ->
              Expanded(
                child: Container(
                  //yüklediğin fotoyu yükler
                  child: Image.asset("image/puci2.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("image/puci2.jpg"),
                ),
              ),
              Expanded(
                child: Container(
                  child: Image.asset("image/puci2.jpg"),
                ),
              ),

              Expanded(
                child: Container(
                  child: Image.asset("image/puci2.jpg"),
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(//kenarları yuvarlar
                    radius: 30,
                    backgroundImage: NetworkImage(
                        "https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: CircleAvatar(
                      child: Image.asset("image/puci2.jpg"),
                  ),
                ),
              ),

            ],
          ),
          Row(
            children: <Widget>[
              Container(child:  FadeInImage.assetNetwork(placeholder: "image/giphy.gif", image:"https://vignette.wikia.nocookie.net/blue-cat-of-nyc/images/d/d0/Sonic.png/revision/latest?cb=20190822171647"),)
              

            ],
          )
        ],
      ),
    );
  }
}
