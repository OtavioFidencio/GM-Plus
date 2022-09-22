import 'package:flutter/material.dart';
import 'package:gmplus/pages/n%C3%ADvel_pages.dart';
import 'package:gmplus/widgets/logo.dart';
import 'package:gmplus/widgets/records.dart';
import 'package:gmplus/widgets/start_button.dart';

import '../constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            StartButton(
              title: 'Modo Normal', 
              color: Colors.white, 
              action: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const NivelPage(modo: Modo.normal),
                ),
              ),
              ),
            StartButton(
              title: 'Modo Difícil', 
              color: Colors.white, 
              action: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => const NivelPage(modo: Modo.dificil),
                ),
              ),
              ),
            const SizedBox(height: 60),
            const Recordes(),
          ],
        ),
      ),
    );
  }
}
