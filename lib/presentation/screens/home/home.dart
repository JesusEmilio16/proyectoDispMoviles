import 'package:flutter/material.dart';
import 'package:parcial/config/router/router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenido a HOME'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centra verticalmente
          crossAxisAlignment: CrossAxisAlignment.center, // centra horizontalmente
          children: [
            Text("192125 - Maicol Eduardo Robles Salazar"),
            Text("192091 - Jesus Emilio Osorio Perez"),
            Text("DISPOSITIVOS MOVILES")
          ],
        ),

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ...Routers.pages.map((res) {
              return ListTile(
                title: Text(res.title),
                subtitle: Text(res.description),
                onTap: (){
                  Navigator.pushNamed(context, res.patch);
                },
                leading: Icon(res.icon),
                );

            }).toList(),
          ],
        ),
      ),
    );
  }
}
