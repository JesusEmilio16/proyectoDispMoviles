import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class TextScreen extends StatefulWidget {
  const TextScreen({super.key});

  @override
  State<TextScreen> createState() => _TextScreenState();
}

class _TextScreenState extends State<TextScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _razaController = TextEditingController();

  String? _raza;
  bool _favorito = false;
  void send() {
    print(_razaController.text);
    print(_raza);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  controller: _razaController,
                  decoration: InputDecoration(
                    labelText: "Digite raza de perro",
                    icon: Icon(Icons.pets),
                  ),
                ),
                const SizedBox(height: 10),

                SwitchListTile(
                  value: _favorito,
                  onChanged: (val) => setState(() {
                    _favorito = val;
                  }),
                  title: const Text("favorito"),
                ),

                const SizedBox(height: 10),
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(label: Text("Seleccione raza favorita")),
                  initialValue: _raza,
                  items: [
                    DropdownMenuItem(value: "cane corso", child: Text("cane corno")),
                    DropdownMenuItem(value: "bolder collie", child: Text("border collie")),
                    DropdownMenuItem(value: "criollo", child: Text("criollo")),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _raza = value;
                    });
                  },
                ),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: this.send,
                    child: const Text("send"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
