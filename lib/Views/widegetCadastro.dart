import 'package:flutter/material.dart';
import 'package:loja/login_view.dart';
class CadastroUser extends StatefulWidget {
  @override
  _CadastroUserState createState() => _CadastroUserState();
}

class _CadastroUserState extends State<CadastroUser> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
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
                      Column(
                        children: [
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width/1,
                            child: Padding(
                              padding: const EdgeInsets.only(left:36.0),
                              child: RaisedButton(onPressed: (){
                                      
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text('Next', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                              color: Colors.pink,
                            
                              splashColor: Colors.white,
                             

                              ),
                              
                            ),
                          ),
                          Container(height: 10,),
                          Container(
                            height: 45,
                            width: MediaQuery.of(context).size.width/1,
                            child: Padding(
                              padding: const EdgeInsets.only(left:36.0),
                              child: RaisedButton(onPressed: (){
                                      Navigator.of(context).push(
                                      MaterialPageRoute(builder: (context)=> LoginView())
                                      );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text('Login', style: TextStyle(color: Colors.pink, fontSize: 22, fontWeight: FontWeight.bold),),
                              color: Colors.white,
                            
                              splashColor: Colors.white,
                             

                              ),
                              
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
  }
}