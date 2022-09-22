import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:gmplus/constants.dart';
import 'package:gmplus/theme.dart';

class CardGame extends StatefulWidget {
  final Modo modo;
  final int opcao;

  const CardGame({
    Key? key,
    required this.modo,
    required this.opcao
    }) : super(key: key);

  @override
  State<CardGame> createState() => _CardGameState();
}


class _CardGameState extends State<CardGame>{
  @override
  Widget build(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: widget.modo == Modo.normal ? Colors.white : GMplusTheme.color,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(5))
      ),
    );
  }
}
