import 'package:flutter/material.dart';
import 'package:loja/produtos/produto_element.dart';
import 'package:loja/produtos/storybtn.dart';
class ProdutoStory extends StatefulWidget {
  @override
  _ProdutoStoryState createState() => _ProdutoStoryState();
}

class _ProdutoStoryState extends State<ProdutoStory> {
List<ProdutoElemnt> stories =[
  new ProdutoElemnt("Adilson Manuel","img/Logar.jpg")
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Lojas",
        style: TextStyle(color:Colors.black),),
      ),
body: Column(
  children: [
    Container(
      width: double.infinity,
      height: 150.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
        storyButton(stories[0], context)
        ],
      ),
    )
  ],
),

    );
  }
}