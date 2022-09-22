import 'package:flutter/material.dart';
import 'package:gmplus/constants.dart';
import 'package:gmplus/widgets/card_nivel.dart';

class NivelPage extends StatelessWidget {
  final Modo modo;

  const NivelPage({Key? key, required this.modo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nível do Jogo')
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 48),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: const EdgeInsets.all(24),
          children: [
            CardNivel(modo: modo, nivel: 1),
            CardNivel(modo: modo, nivel: 2),
            CardNivel(modo: modo, nivel: 3),
            CardNivel(modo: modo, nivel: 4),
            CardNivel(modo: modo, nivel: 5),
            CardNivel(modo: modo, nivel: 6),
          ],
        ),
      ),
    );
  }
}
