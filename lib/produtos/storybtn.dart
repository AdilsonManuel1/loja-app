import 'package:flutter/material.dart';
import 'package:loja/produtos/produto_element.dart';


Widget storyButton(ProdutoElemnt story, BuildContext context){
 return Padding(
   padding: const EdgeInsets.all(8.0),
   child: Column(
     children: [
       InkWell(
         borderRadius: BorderRadius.circular(50.0),
         onTap: (){

         },
         child: Container(
           width: 70.0,
           height: 70.0,
           
         ),
       )
     ],
   ),
 );

}