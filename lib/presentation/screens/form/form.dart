import 'package:flutter/material.dart';
import 'package:parcial/presentation/screens/form/radio/radio.dart';
import 'package:parcial/presentation/screens/form/text/text.dart';
// import 'package:flutter/widgets.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  int _indicador = 0;
  final List<Widget> _elementos = <Widget>[TextScreen(), RadioScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hola desde formulario"),
        centerTitle: true,
        backgroundColor: Colors.purple,

      ),
      body: Center(
        child: SizedBox(
          width: 900,
          child: _elementos[_indicador],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indicador,
        onTap: (value) {
          setState(() {
            _indicador = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "razas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.public),
            label: "origen"
          ),
        ],
      ),
    );
  }
}
