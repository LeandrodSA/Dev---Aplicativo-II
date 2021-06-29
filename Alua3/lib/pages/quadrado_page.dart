import 'package:entername/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class QuadradoPage extends StatefulWidget {
  @override
  _QuadradoPageState createState() => _QuadradoPageState();
}

class _QuadradoPageState extends State<QuadradoPage> {
  final TextEditingController _lados = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Área do Quadrado"),
      centerTitle: true,
    );
  }

  _buildBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildTrapezio(),
        ],
      ),
    );
  }

  _buildTrapezio() {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _lados,
            decoration: InputDecoration(labelText: 'Lados'),
          ),
        ),
        RaisedButton(
          child: Text('Enviar'),
          onPressed: () {
            final double lados = double.parse(_lados.text);
            double resultado = lados*2;
            _showResult(lados, resultado);
          },
        ),
      ]),
    );
  }

  _showResult(double lados, double resultado) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CustomDialog(
            title: "Dados",
            message:
                "Cada Lado Tem:$lados.cm\nResultado da Área\n$resultado",
          );
        });
  }
}
