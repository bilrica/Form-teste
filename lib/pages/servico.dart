import 'package:app_teste/widgets/app_text.dart';
import 'package:flutter/material.dart';

class AddServico extends StatefulWidget {
  @override
  _AddServicoState createState() => _AddServicoState();
}

class _AddServicoState extends State<AddServico> {
  final _focusr = FocusNode();
  final _focuss = FocusNode();
  final _focust = FocusNode();
  final _focusu = FocusNode();
  var _cliente = TextEditingController(text: "");
  var _servico = TextEditingController(text: "");
  var _preco = TextEditingController(text: "");
  var _horaInicial = TextEditingController(text: "");
  var _horaFim = TextEditingController(text: "");
  var _totalHoras = TextEditingController(text: "");
  var _total = TextEditingController(text: "");

  int value;
  String nomeCat;
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Serviço"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Form(
            key: _formKey,
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(
                    "Cliente",
                    "Cliente",
                    autofoco: true,
                    controller: _cliente,
                    nextFocus: _focusr,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "OBRIGATÓRIO";
                      }
                      if (value.length < 3) {
                        return '(Mínimo 3 caracteres)';
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(
                    "Serviço",
                    "Serviço",
                    controller: _servico,
                    focusNode: _focusr,
                    nextFocus: _focuss,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "OBRIGATÓRIO";
                      }
                      if (value.length < 3) {
                        return '(Mínimo 3 caracteres)';
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(
                    "Preço",
                    "Preço",
                    controller: _preco,
                    focusNode: _focuss,
                    nextFocus: _focust,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "OBRIGATÓRIO";
                      }
                      if (value.length < 3) {
                        return '(Mínimo 3 caracteres)';
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(
                    "Hora de ínicio",
                    "Hora de ínicio",
                    controller: _horaInicial,
                    focusNode: _focust,
                    nextFocus: _focusu,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "OBRIGATÓRIO";
                      }
                      if (value.length < 3) {
                        return '(Mínimo 3 caracteres)';
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(
                    "Hora final",
                    "Hora final",
                    controller: _horaFim,
                    focusNode: _focusu,
                    validator: (value) {
                      if (value.isEmpty) {
                        return "OBRIGATÓRIO";
                      }
                      if (value.length < 3) {
                        return '(Mínimo 3 caracteres)';
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(
                    "Total de horas",
                    "Total de horas",
                    teste: false,
                    controller: _totalHoras,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: AppText(
                    "Valor Total",
                    "Valor Total",
                    controller: _total,
                    teste: false,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text(
                          "CAlCULAR",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {
                            double a = 0;

                            print(a);
                            double b = 0, c = 0;
                            b = (double.parse(
                                _horaFim.text.replaceAll(",", ".")));
                            c = (double.parse(
                                _horaInicial.text.replaceAll(",", ".")));

                            a = (b - c);

                            print(c);
                            print(b);
                            print(a);
                            print("a+b");
                            print(a + b);
                            print(b - c);

                            setState(() {
                              _totalHoras.text = a.toString();
                              _total.text =
                                  ((double.parse(_preco.text) * a)).toString();
                            });
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: RaisedButton(
                        color: Colors.green,
                        child: Text(
                          "SALVAR",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        onPressed: () {
                          if (_formKey.currentState.validate()) {}
                        },
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
