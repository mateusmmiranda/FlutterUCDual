import 'dart:io';

import 'package:flutter/material.dart';

class AnexoCNH extends StatelessWidget {
  final File arquivoCNH;

  AnexoCNH({Key? key, required this.arquivoCNH}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 24),
      child: Center(
        child: SizedBox(
          width: 100,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.file(
              arquivoCNH,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
