import 'package:entername/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';
import 'package:entername/model/pessoa.dart';

class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  final TextEditingController _controllerNome = TextEditingController();
  final TextEditingController _controllerSobreNome = TextEditingController();
  final TextEditingController _controllerIdade = TextEditingController();
  final TextEditingController _controllerEndereco = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Formulario"),
      centerTitle: true,
    );
  }

  _buildBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildForm(),
        ],
      ),
    );
  }

  _buildForm() {
    return Container(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controllerNome,
            decoration: InputDecoration(labelText: 'Nome'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controllerSobreNome,
            decoration: InputDecoration(labelText: 'Sobre Nome'),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controllerIdade,
            decoration: InputDecoration(labelText: 'Idade'),
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            controller: _controllerEndereco,
            decoration: InputDecoration(labelText: 'Endereço'),
          ),
        ),
        RaisedButton(
          child: Text('Enviar'),
          onPressed: () {
            final String nome = _controllerNome.text;
            final String sobreNome = _controllerSobreNome.text;
            final String idade = _controllerIdade.text;
            final String endereco = _controllerEndereco.text;

            final Pessoa newpessoa = Pessoa(nome, sobreNome, idade, endereco);

            _showResult(newpessoa.toString());
          },
        ),
      ]),
    );
  }

  _showResult(String pessoa) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return CustomDialog(
            title: "Dados",
            message: pessoa,
          );
        });
  }
}
