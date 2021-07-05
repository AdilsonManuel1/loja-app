import 'package:flutter/material.dart';
import 'package:intro_views_flutter/Models/page_view_model.dart';
import 'package:loja/Views/cadastro_view.dart';
import 'package:loja/logar.dart';

class LoginView extends StatefulWidget {
  @override
  final pages = [
    PageViewModel(
        pageColor: const Color(0xFF03A9F4),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('img/vestido.jfif'),
        body: Center(
          child: Text(
            'Encontre os melhores Vestidos',
          ),
        ),
        title: Text(
          'Vestidos Class',
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'img/vestido.jfif',
          height: 265.0,
          width: 265.0,
          alignment: Alignment.center,
        )),
    PageViewModel(
      pageColor: const Color(0xFF8BC34A),
      iconImageAssetPath: 'img/vestido1.jpg',
      body: Center(
        child: Text(
          'O melhor do mundo de Africa, esperando por você.',
        ),
      ),
      title: Center(child: Text('Moda Africana.')),
      mainImage: Image.asset(
        'img/vestido1.jpg',
        height: 265.0,
        width: 265.0,
        alignment: Alignment.center,
      ),
      titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
      bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
    ),
    PageViewModel(
        pageColor: const Color(0xFFb8860b),
        // iconImageAssetPath: 'assets/air-hostess.png',
        bubble: Image.asset('img/vestido3.jfif'),
        body: Center(
          child: Text(
            'Vestidos de Glamor esperando você.',
          ),
        ),
        title: Center(
          child: Text(
            'Beleza e Glamor',
          ),
        ),
        titleTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        bodyTextStyle: TextStyle(fontFamily: 'MyFont', color: Colors.white),
        mainImage: Image.asset(
          'img/vestido3.jfif',
          height: 265.0,
          width: 265.0,
          alignment: Alignment.center,
        )),
  ];

  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        // color: Colors.pink[300],
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.centerRight,
            colors: [Colors.orange[900], Colors.pink[700]],
          ),
        ),
        child: Column(
          children: [
            Container(
              height: 40,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Image.asset(
                'img/login.jpg',
                height: 400,
              ),
            ),
            Padding(
                padding: EdgeInsets.only(top: 100),
                child: Column(
                  children: [
                    Container(
                      height: 55,
                      width: 300,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context)=> Logar(),)
                          );
                        },
                        
                        color: Colors.white,
                        child: Text(
                          'Login',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)),
                      ),
                    ),
                    Container(
                      height: 10,
                    ),
                    Container(
                      height: 55,
                      width: 300,
                      child: RaisedButton(
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context)=>Cadastro())
                          );
                        },
                        child: Text(
                          'Creat Account',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        color: Colors.pink[300],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(33),
                        color: Colors.white,
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
