import 'package:entername/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

class CinemaPage extends StatefulWidget {
  @override
  _CinemaPageState createState() => _CinemaPageState();
}

class _CinemaPageState extends State<CinemaPage> {
  final TextEditingController _preco = TextEditingController();
  final TextEditingController _pessoas = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Cinema"),
      centerTitle: true,
    );
  }

  _buildBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildCinema(),
        ],
      ),
    );
  }

  _buildCinema() {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _preco,
            decoration: InputDecoration(labelText: 'Preço Sessão'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _pessoas,
            decoration: InputDecoration(labelText: 'Quantidade de Pessoas'),
            keyboardType: TextInputType.number,
          ),
        ),
        RaisedButton(
          child: Text('Enviar'),
          onPressed: () {
            final String preco = _preco.text;
            final String pessoas = _pessoas.text;
            final double resultado = double.parse(preco) * double.parse(pessoas);
            _showResult(pessoas, preco, resultado);
          },
        ),
      ]),
    );
  }

  _showResult(String pessoa, String preco, double resultado) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CustomDialog(
            title: "Dados",
            message: "R\$ "+preco+" X "+pessoa+" Pessoas\nResultado\nR\$ $resultado",
          );
        });
  }
}
