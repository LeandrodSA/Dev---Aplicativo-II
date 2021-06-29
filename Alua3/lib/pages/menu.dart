import 'package:entername/pages/cinema_page.dart';
import 'package:entername/pages/compare_page.dart';
import 'package:entername/pages/form_page.dart';
import 'package:entername/pages/quadrado_page.dart';
import 'package:entername/pages/trapezio_page.dart';
import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  double w = 300;
  double p = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  _buildAppBar() {
    return AppBar(
      title: Text("Menu"),
      centerTitle: true,
    );
  }

  _buildBody() {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          _buildMenu(),
        ],
      ),
    );
  }

  _buildMenu() {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(p),
          ),
          ButtonTheme(
            minWidth: w,
            child: RaisedButton(
              padding: EdgeInsets.all(p),
              child: Text("Formulario"),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => FormPage()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(p),
          ),
          ButtonTheme(
            minWidth: w,
            child: RaisedButton(
              padding: EdgeInsets.all(p),
              child: Text("Cinema"),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CinemaPage()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(p),
          ),
          ButtonTheme(
            minWidth: w,
            child: RaisedButton(
              padding: EdgeInsets.all(p),
              child: Text("Trapézio"),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => TrapezioPage()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(p),
          ),
          ButtonTheme(
            minWidth: w,
            child: RaisedButton(
              padding: EdgeInsets.all(p),
              child: Text("Quadrado"),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => QuadradoPage()));
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(p),
          ),
          ButtonTheme(
            minWidth: w,
            child: RaisedButton(
              padding: EdgeInsets.all(p),
              child: Text("Compare"),
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ComparePage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
