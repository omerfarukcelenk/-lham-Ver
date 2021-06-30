import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İlham Ver',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MyHomePage(title: 'İlham ver'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);



  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {

  var ekranBilgisi = MediaQuery.of(context);
  final double ekranYuksekligi = ekranBilgisi.size.height;
  final double ekranGenisligi = ekranBilgisi.size.width;


  return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(top: ekranYuksekligi/100 , bottom: ekranYuksekligi/100),
            child: SizedBox(
                width: ekranGenisligi/4,
                child: Image.asset("resimler/s1ltr1.jpg")
            ),
          ),
          Text("Steve Jobs", style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.bold,
            fontSize: ekranGenisligi/25
          ),),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(left: ekranGenisligi/100, right: ekranGenisligi/100),
            child: Text("Dünyayı değiştirecek insanlar, onu değiştirebileceklerini düşünecek kadar çılgın olanlardır.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: ekranGenisligi/25
              ),
            ),
          ),
          Spacer(),
          Padding(
            padding:  EdgeInsets.only(bottom: ekranYuksekligi/100),
            child: SizedBox(
              width: ekranGenisligi/2,
              height: ekranYuksekligi/15,
              child: ElevatedButton( child: Text("İlham Ver",style: TextStyle(color: Colors.white),) , onPressed: (){ print("İlham verildi");},style: ElevatedButton.styleFrom(
    primary: Colors.redAccent,

    textStyle: TextStyle(
    fontSize: ekranGenisligi/25,
    )),


              ),
            ),
          )
        ],
      ),
    );
  }
}
