import 'package:espressoexpress/views/saltpapershotgun.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EspressoExpress());
}

class EspressoExpress extends StatelessWidget {
  const EspressoExpress({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PaperStraw());
  }
}
