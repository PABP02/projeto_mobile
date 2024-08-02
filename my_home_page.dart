import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Teste P.A"),
      ),
     floatingActionButton: FloatingActionButton(
        onPressed: () { final snackBar = SnackBar(
          content: const Text('Yay! A SnackBar!'),
          action: SnackBarAction(
            label: 'Undo',
            onPressed: () {
              // Some code to undo the change.
            },
          ),
        );

        // Find the ScaffoldMessenger in the widget tree
        // and use it to show a SnackBar.
        ScaffoldMessenger.of(context).showSnackBar(snackBar);},


    child: const Icon(Icons.add),
    ),
      body: const Center(
        child:  Text(
            "Palmeiraaaaaaaaaaaaaaaa",
             style: TextStyle(
               fontSize: 40,
              fontWeight: FontWeight.bold,
              )
      ),
      ),
    );
  }
}
