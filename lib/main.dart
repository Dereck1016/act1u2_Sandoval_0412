import 'package:flutter/material.dart';
import 'package:u2act1/pantallas0412/panel0412/widgets0412/panel_pantalla0412.dart';

void main() => runApp(MiAppPerfumeria0412());

class MiAppPerfumeria0412 extends StatelessWidget {
  const MiAppPerfumeria0412({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfumeria Sandoval ',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
          useMaterial3: true),
      home: PanelPantalla0412(),
    );
  }
}
