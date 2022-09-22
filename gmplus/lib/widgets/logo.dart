import 'package:flutter/material.dart';
import 'package:gmplus/theme.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: RichText(
            text: TextSpan(
              text: 'GM +',
              style: DefaultTextStyle.of(context).style.copyWith(
                fontSize: 30, 
                color: GMplusTheme.color
                ),
            )
            ),
          ),
      ],
    );
  }
}
