import 'package:flutter/material.dart';
//import 'package:loja/logar.dart';
//import 'package:loja/login_view.dart';
import 'package:loja/user/castroUser/empresa_widget.dart';
import 'package:loja/user/castroUser/pessoas_widget.dart';
import 'package:loja/widgets/progress_widget.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  DateTime selectDate  = DateTime.now ();
  
  @override
  Widget build(BuildContext context) {
final PageController controller = PageController(initialPage: 0);
   
    return Scaffold(
      appBar: AppBar(
        
        elevation: 0,
        
        actions: [
          
          Container(
            height: 20,
            width: MediaQuery.of(context).size.width,
            color: Colors.transparent,
            child: Column(
              children: [
              ],
            ),
          ),
          
        ],
        backgroundColor: Colors.pink,
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        
        controller: controller,
        
        children: [
          
          Container(
           // height: 200,
            child:
          
           CadastroPessoal()),
     
        ],
      )
    );
  }
}

 