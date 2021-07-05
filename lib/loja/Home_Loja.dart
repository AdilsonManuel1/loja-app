import 'package:flutter/material.dart';
//import 'package:loja/login_view.dart';
import 'package:loja/loja/homeProdutos.dart';
import 'package:loja/perfil/page_perfil.dart';

class HomeLoja extends StatefulWidget {
  @override
  _HomeLojaState createState() => _HomeLojaState();
}

class _HomeLojaState extends State<HomeLoja> {
  int _currentIndex=0;
  final tabs =[
    HomeProdutos(),
    Center(child: Text('Loja'),),
     Center(child: HomePerfil(),),

  ];
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle:true,
        title: Text('Lojas Disponiveis', style: TextStyle(color: Colors.pink,
        fontWeight: FontWeight.bold,
        fontSize: 30,),),

      ),
      body: tabs[_currentIndex],
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // type:BottomNavigationBarType.fixed,
        backgroundColor: Colors.pink,
        //selectedFontSize: 35,
       // unselectedFontSize: 28,
         items: [
          BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.white,),
          label: 'Lojas'
          ),
            BottomNavigationBarItem(icon: Icon(Icons.shop, color: Colors.white),
          label: 'Minha Loja',
          ),
            BottomNavigationBarItem(icon: Icon(Icons.person, color: Colors.white),
                  label: 'Perfil',
            ),
   
          
         ],
         onTap: (index){
           setState(() {
             _currentIndex =index;
           });
         },
        ),
    );
  }
}