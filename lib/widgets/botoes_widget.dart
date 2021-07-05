import 'package:flutter/material.dart';

import '../login_view.dart';

class BotoesWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
                        children: [
                          
                          Container(height: 10,),
                          Container(
                            height: 55,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.only(left:36.0),
                              child: RaisedButton(onPressed: (){
                                      Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context)=> LoginView())
                                      );
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text('Create', style: TextStyle(color: Colors.pink, fontSize: 22, fontWeight: FontWeight.bold),
                              
                              ),
                              color: Colors.white,
                            
                              splashColor: Colors.white,
                             

                              ),
                              
                            ),
                          ),
                        ],
                      );
    
  }
}