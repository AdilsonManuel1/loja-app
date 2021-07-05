import 'package:flutter/material.dart';
class EmpresaTipo extends StatefulWidget {
  @override
  _EmpresaTipoState createState() => _EmpresaTipoState();
}

class _EmpresaTipoState extends State<EmpresaTipo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              labelText: 'Nome da Empresa',
              prefixIcon:Icon(Icons.group),
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
        ],
      )
    );
  }
}