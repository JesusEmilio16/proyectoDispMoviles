import 'package:flutter/material.dart';
import 'package:parcial/helpers/api_dog.dart';
import 'package:parcial/model/dog_model.dart';

class RequestScreen extends StatefulWidget {
  const RequestScreen({super.key});

  @override
  State<RequestScreen> createState() => _DogScreenState();
}

class _DogScreenState extends State<RequestScreen> {
  late Future<DogModel> dogFuture;

  @override
  void initState() {
    super.initState();
    dogFuture = DogApi.getRandomDog();
  }

  void reloadDog() {
    setState(() {
      dogFuture = DogApi.getRandomDog();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dog Pics API"),
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: FutureBuilder<DogModel>(
          future: dogFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text("Error: ${snapshot.error}");
            } else if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(snapshot.data!.imageUrl, height: 300),
                  const SizedBox(height: 20),
                  Text(
                    "Raza: ${snapshot.data!.raza}",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                    onPressed: reloadDog,
                    child: const Text("Ver otro perro 🐶"),
                  )
                ],
              );
            } else {
              return const Text("No hay datos");
            }
          },
        ),
      ),
    );
  }
}
