import 'package:flutter/material.dart';

class HomePerfil extends StatefulWidget {
  @override
  _HomePerfilState createState() => _HomePerfilState();
}

class _HomePerfilState extends State<HomePerfil> {
  
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height/2;
    return Container(
      
      width: largura,
      height: altura,
      
      child: Column(
        children: [
          Text('Perfil de Utilizador'),
          Container(height: 30,),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.red,
            ),
          ),
        ],
      )
      
    );
  }
}