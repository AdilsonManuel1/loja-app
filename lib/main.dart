import 'package:flutter/material.dart';
import 'package:loja/login_view.dart';
import 'package:intro_views_flutter/intro_views_flutter.dart';
import 'package:loja/loja/Home_Loja.dart';
import 'package:loja/produtos/produto_story.dart';

import 'loja/homeProdutos.dart';
//import 'package:loja/Views/cadastro_view.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Builder(
        builder: (context) => IntroViewsFlutter(
          LoginView().pages,
          showNextButton: true,
          showBackButton: true,
          
          onTapDoneButton: () {
            Navigator.of(context).push(
                                  MaterialPageRoute(
                                    builder: (context) => HomeLoja(),
                                  ),
                                );
          },
          
          pageButtonTextStyles: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
          
        ), //IntroViewsFlutter
      ),
      //Build
      
      debugShowCheckedModeBanner: false,
    );
  }
}

