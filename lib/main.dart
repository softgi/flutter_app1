import 'package:flutter_app1/kakaologinpage.dart';
import 'package:kakao_flutter_sdk/all.dart';
import 'package:flutter/material.dart';

void main() {
  KakaoContext.clientId = 'd0666b57f25deb57e4ad012972a9dd50';
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KakaoLogin',
      home: KakaoLoginPage(),
    );
  }
}
