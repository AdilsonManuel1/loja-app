import 'package:flutter/material.dart';
import 'package:loja/logar.dart';
import 'package:loja/widgets/botoes_widget.dart';

//import '../../login_view.dart';
class CadastroPessoal extends StatefulWidget {
  @override
  _CadastroPessoalState createState() => _CadastroPessoalState();
}

class _CadastroPessoalState extends State<CadastroPessoal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //width: MediaQuery.of(context).size.width,
      height: 2,
      color: Colors.pink,

      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Create Account", 
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.white,
                          
                          ),
                    ),
                    Text('Please fill the input blow here', style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_add_alt,
                    color: Colors.white,
                  ),

                  labelText: 'Nome',

                 
                  // borderRadius: BorderRadius.circular(radius),
                  
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                  
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              Container(
                height: 15,
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.phone_android_outlined,
                    color: Colors.white,
                  ),
                  labelText: 'Telefone',
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email, color: Colors.white),
                  labelText: 'Email',
                  // borderRadius: BorderRadius.circular(radius),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              Container(
                height: 15,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.close, color: Colors.white),
                  labelText: 'Password',

                  // borderRadius: BorderRadius.circular(radius),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.pink, width: 2.0),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
              Container(
                height: 25,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      BotoesWidget(),
                      Container(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have a account? ', style: TextStyle(fontSize: 18),),
                          InkWell(
                            child:  Text('Sing In', style: TextStyle(color: Colors.white,fontSize: 18),
                          
                          ),
                          onTap:()=>Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>Logar()),
                          ),
                          ),
                        
                        ],
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
