import 'package:entername/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class ComparePage extends StatefulWidget {
  @override
  _ComparePageState createState() => _ComparePageState();
}

class _ComparePageState extends State<ComparePage> {
  final TextEditingController _primeira = TextEditingController();
  final TextEditingController _segunda = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Comparar Nomes"),
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
            controller: _primeira,
            decoration: InputDecoration(labelText: 'Nome da Primeira Pessoa'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _segunda,
            decoration: InputDecoration(labelText: 'Nome da Segunda Pessoa'),
          ),
        ),
        RaisedButton(
          child: Text('Enviar'),
          onPressed: () {
            final String primeira = _primeira.text;
            final String segunda = _segunda.text;
            String resultado;
            if (primeira == segunda) {
              resultado = "É a mesma pessoa.";
            } else {
              resultado = "Os nomes não conferem.";
            }

            _showResult(resultado);
          },
        ),
      ]),
    );
  }

  _showResult(String resultado) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CustomDialog(
            title: "Dados",
            message: "$resultado",
          );
        });
  }
}
