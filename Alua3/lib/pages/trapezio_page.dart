import 'package:entername/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class TrapezioPage extends StatefulWidget {
  @override
  _TrapezioPageState createState() => _TrapezioPageState();
}

class _TrapezioPageState extends State<TrapezioPage> {
  final TextEditingController _basemaior = TextEditingController();
  final TextEditingController _basemenor = TextEditingController();
  final TextEditingController _altura = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Área do Trapézio"),
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
            controller: _basemaior,
            decoration: InputDecoration(labelText: 'Maior Base'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _basemenor,
            decoration: InputDecoration(labelText: 'Menor Base'),
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _altura,
            decoration: InputDecoration(labelText: 'Altura'),
            keyboardType: TextInputType.number,
          ),
        ),
        RaisedButton(
          child: Text('Enviar'),
          onPressed: () {
            final double basemaior = double.parse(_basemaior.text);
            final double basemenor = double.parse(_basemenor.text);
            final double altura = double.parse(_altura.text);
            double resultado = (basemaior + basemenor)*altura/2;
            _showResult(basemaior, basemenor, altura, resultado);
          },
        ),
      ]),
    );
  }

  _showResult(double basemaior, double basemenor, double altura, double resultado) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CustomDialog(
            title: "Dados",
            message: "Maior Base:$basemaior\nMenor Base:$basemenor\nAltura:$altura\nResultado da Área\n$resultado",
          );
        });
  }
}
