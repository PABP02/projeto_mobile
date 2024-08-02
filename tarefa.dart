import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
class tarefa extends StatefulWidget {
  const tarefa({super.key});
  @override
  State<tarefa> createState() => _TarefaState();
}
class _TarefaState extends State<tarefa> {
  final TextEditingController _controller = TextEditingController();
  String texto = "vaxco";
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("tarefa 07/06 "),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            texto = _controller.text;
          });
        },
        child: const Icon(Icons.rocket),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Altere para center
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: _controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Insira um texto',
              ),
            ),
          ),
          Text(
            texto,
            style: const TextStyle(fontSize: 36),
          ),
    AnimatedTextKit(
    animatedTexts: [
    WavyAnimatedText('libertadores'),
    WavyAnimatedText('Gloria Eterna'),
      WavyAnimatedText('Tetra'),

    ],
    isRepeatingAnimation: true,
    onTap: () {
    print("Tap Event");
    },
    ),

        ],
      ),
    );
  }
}
