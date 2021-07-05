import 'package:flutter/material.dart';
//import 'package:loja/login_view.dart';

class CadastroOutrosDados extends StatefulWidget {
  @override
  _CadastroOutrosDadosState createState() => _CadastroOutrosDadosState();
}

class _CadastroOutrosDadosState extends State<CadastroOutrosDados> {
  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  width: MediaQuery.of(context).size.width / 1,
                  child: Column(
                    children: [
                      
                      TextField(
                        
                        decoration: InputDecoration(
                          icon: Icon(Icons.verified_user_rounded, color: Colors.pink,),

                          labelText: 'Nome',
                          // borderRadius: BorderRadius.circular(radius),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.pink, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.pink, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                      Container(height: 10,),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email, color: Colors.pink,),
                          labelText: 'Email',
                          // borderRadius: BorderRadius.circular(radius),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.pink, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.pink, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                       Container(height: 10,),
                      TextField(
                        
                        decoration: InputDecoration(
                          icon: Icon(Icons.phone, color: Colors.pink,),
                          labelText: 'Telefone',
                          // borderRadius: BorderRadius.circular(radius),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.pink, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Colors.pink, width: 2.0),
                            borderRadius: BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                       Container(height: 20,),
                   ],
                  ),
                ),
              );
  }
}