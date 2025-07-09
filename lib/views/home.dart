import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dragon App'),
        actions: [Image.asset('assets/animal.png')],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [
            SizedBox(height: 100),
            Text(
              'Bienvenido Usuario',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            SizedBox(height: 50),
            Image.asset('assets/empty.png'),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'nada que mostrar todavía...',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
