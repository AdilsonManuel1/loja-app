import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loja/loja/Home_Loja.dart';
//import 'package:loja/loja/homeProdutos.dart';

import 'Views/cadastro_view.dart';



class Logar extends StatefulWidget {
  @override
  _LogarState createState() => _LogarState();
}

class _LogarState extends State<Logar> {
  String email = '';
  String pass = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          
          elevation: 0,
          backgroundColor: Colors.pink[300],
          
        ),
        body: SingleChildScrollView(
          child: Stack(
            children: [
              
              Container(
              
                height: MediaQuery.of(context).size.height,
        
               
              ),
               Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/4,
               
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset('img/Logar1.jpg'),
                ),
                
              ),
               Positioned.fill(
                top: MediaQuery.of(context).size.height / 4,
                bottom: 0,
                child: Container(
                  
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(
                  
                    
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50)),
             //       color: Colors.pink[300],
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                      Text(
                        "Welcome to back Login to Your Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned.fill(
                top: 220,
                right: 5,
                left: 5,
                bottom: 220,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        TextField(
                          onChanged: (Text) {
                            {
                              email = Text;
                            }
                          },
                          
                          decoration: InputDecoration(
                            labelText: 'Email',
                            
      prefixIcon:  Icon(Icons.email, color: Colors.pink,),

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
                        Container(
                          height: 10,
                        ),
                        TextField(
                            onChanged: (Text) {
                          {
                            pass = Text;
                          }
                        },
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Password',
                          
                             prefixIcon:  Icon(Icons.lock, color: Colors.pink,),

       focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.pink, width: 2.0),
        borderRadius: BorderRadius.circular(25.0),
    ),
    enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(
            color: Colors.pink, 
            width: 2.0),
        borderRadius: BorderRadius.circular(25.0),
    ),
                            border: InputBorder.none,
                          ),
                        ),
                       
                      ],
                    ),
                  ),
                ),
              ),
              Container(height: 10,),
              Positioned.fill(
                top: 380,
                bottom:160,
                right: 20,
                left: 20,
                child: Container(
              width: MediaQuery.of(context).size.width/3,
              height: 80,
             // color: Colors.black,
                child: RaisedButton(
                  onPressed: () {
                    if(email=='adilson@hotmail.com' && pass=='123'){
                     // print('Logado');
                     Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(builder: (context)=> HomeLoja())
                                      );
                    }else{
                      print('Verifique ');
                    }
                  },
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      FaIcon(FontAwesomeIcons.signInAlt, color: Colors.white),

                      Text('     Login', style: TextStyle(color:Colors.white, fontSize: 20),),
                    ],
                  ),

                color: Colors.pink[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                ),
              ),
                
             ),
              Positioned.fill(
                top: 440,
                bottom:100,
                right: 20,
                left: 20,
                child: Container(
              width: 1200,
              height: 80,
             // color: Colors.black,
                child: RaisedButton(
                  onPressed: () {
                    print('Api do Firebase');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.facebookF, color: Colors.white),
                      Text('   Facebook', style: TextStyle(color:Colors.white, fontSize: 20),),
                      
                    ],
                  ),

                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                ),
              ),
                
             ),
            
              Positioned.fill(
                top: 500,
                bottom:70,
                right: 20,
                left: 20,
               child:Center(
                 child: Text(
                              'Forgot Password?',
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
               ),

             ),
             Container(height: 10,),

             Positioned.fill(
               top: 560,
                bottom:40,
                right: 20,
                left: 20,
               child: Row(
                 crossAxisAlignment: CrossAxisAlignment.center,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text('Don t have an account? ',
                   style:TextStyle(fontSize: 16, fontWeight: FontWeight.bold,
                   )),
                  InkWell(
                    child:Text('Sing up', style: TextStyle(
                     fontSize: 16,
                     fontWeight: FontWeight.bold,
                     color: Colors.pink[300]
                   ),),
                   onTap: ()=>Navigator.of(context).push(
                     MaterialPageRoute(builder: (context)=>Cadastro())
                   ),
                  ),

                   
                 ],
               ),
             ),
            
            ]
          ),
         
        ));
  }
}
