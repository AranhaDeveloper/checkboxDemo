import 'package:flutter/material.dart';

class EntradaCheckbox extends StatefulWidget {
  @override
  _EntradaCheckboxState createState() => _EntradaCheckboxState();
}

class _EntradaCheckboxState extends State<EntradaCheckbox> {
  bool _comidaBrasileira = false;
  bool _comidaMexicana = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Entrada de dados"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            CheckboxListTile(
              title: Text("Comida Brasileira"),
              subtitle: Text("A melhor do mundo"),
              activeColor: Colors.red,
              value: _comidaBrasileira,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              onChanged: (bool valor) {
                setState(() {
                  _comidaBrasileira = valor;
                });
              },
            ),
            CheckboxListTile(
              title: Text("Comida Mexicana"),
              subtitle: Text("Tambem excelente"),
              activeColor: Colors.green,
              value: _comidaMexicana,
              //selected: true,
              //secondary: Icon(Icons.add_box),
              onChanged: (bool valor) {
                setState(() {
                  _comidaMexicana = valor;
                });
              },
            ),
            RaisedButton(
                child: Text(
                  'Salvar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: null)

            /*Text("Comida Brasileira"),
            Checkbox(
              value: _estaSelecionado,
              onChanged: (bool valor) {
                setState(() {
                  _estaSelecionado = valor;
                });
                //print("Checkbox:" + valor.toString());
              },
            )*/
          ],
        ),
      ),
    );
  }
}
