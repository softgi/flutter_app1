import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app1/webView.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_bus)),
                Tab(icon: Icon(Icons.directions_railway))
              ],
            ),
            centerTitle: true,
            title: Text("길 찾기"),
          ),
          body: TabBarView(
            children: [
              Column(
                children: <Widget>[
                  SizedBox(child: CupertinoButton(
                    onPressed: (){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>KakaoMapShow()));
                    },
                    child: Text("지도"),
                  ),)
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(child: Text("버스"),)
                ],
              ),
              Column(
                children: <Widget>[
                  SizedBox(child: Text("기차"),)
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

