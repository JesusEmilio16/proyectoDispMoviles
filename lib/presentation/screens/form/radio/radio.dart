import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  String _adquisicion = '';
  bool _italiano = false;
  bool _reinoUnido = false;
  bool _calle = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Seleccione opcion"),
            RadioListTile(
              title: Text("adoptar"),
              value: "adoptar",
              groupValue: _adquisicion,
              onChanged: (value) {
                setState(() {
                  _adquisicion = value ?? "";
                });
              },
            ),

            RadioListTile(
              title: Text("comprar"),
              value: "comprar",
              groupValue: _adquisicion,
              onChanged: (value) {
                setState(() {
                  _adquisicion = value ?? "";
                });
              },
            ),

            const Text("seleccione origen"),

            CheckboxListTile(
              title: Text("italiano"),
              value: _italiano,
              onChanged: (value) {
                setState(() {
                  _italiano = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: Text("reino unido"),
              value: _reinoUnido,
              onChanged: (value) {
                setState(() {
                  _reinoUnido = value ?? false;
                });
              },
            ),

            CheckboxListTile(
              title: Text("calle"),
              value: _calle,
              onChanged: (value) {
                setState(() {
                  _calle = value ?? false;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
