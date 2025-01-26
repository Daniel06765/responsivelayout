import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,  // Remove o banner de debug
      home: Scaffold(
        appBar: AppBar(
          title: Text('Layout Responsivo'),
        ),
        body: ResponsiveLayout(),
      ),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Pegando as dimensões da tela
    double screenWidth = MediaQuery.of(context).size.width;

    // Exibindo o ícone com base no tamanho da tela
    if (screenWidth > 600) {
      // Para telas grandes (como desktops), exibe o ícone de computador
      return Center(
        child: Icon(Icons.computer, size: 100, color: Colors.blue),
      );
    } else {
      // Para telas pequenas (como celulares), exibe o ícone de celular
      return Center(
        child: Icon(Icons.phone_android, size: 100, color: Colors.green),
      );
    }
  }
}
