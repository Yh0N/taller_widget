import 'package:flutter/material.dart';

import 'list_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text("Inicio"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
              image: NetworkImage(
                'https://m87.com.co/wp-content/uploads/2023/08/Banner-interno-coperativa-1-1.jpg',
              ),
              height: 200,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Ingrese Su Nombre',
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListScreen(name: nameController.text),
                  ),
                );
              },
              child: Text('Ir a la lista'),
            ),
          ],
        ),
      ),
    );
  }
}
