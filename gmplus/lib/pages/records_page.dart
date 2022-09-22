import 'package:flutter/material.dart';
import 'package:gmplus/constants.dart';
import 'package:gmplus/theme.dart';

class RecordesPage extends StatefulWidget {
  final Modo modo;

  const RecordesPage({Key? key, required this.modo}) : super(key: key);

  @override
  State<RecordesPage> createState() => _RecordesPageState();
}

class _RecordesPageState extends State<RecordesPage> {
  final List<String> recs = ['Modo', 'Nível 8', 'Nível 10', 'Nível 12'];

  getModo() {
    return widget.modo == Modo.normal ? 'Normal' : 'Difícil';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recordes'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.only(top: 36, bottom: 24),
                      child: Center(
                        child: Text(
                          'Modo ${getModo()}',
                          style: const TextStyle(
                              fontSize: 28, color: GMplusTheme.color),
                        ),
                      ),
                    )
                  : ListTile(
                      title: Text(recs[index]),
                      trailing: const Text('X Jogadas'),
                      tileColor: Colors.grey[900],
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                    );
            },separatorBuilder: (_, __) => const Divider(color: Colors.transparent,), 
            itemCount: recs.length),
      ),
    );
  }
}
