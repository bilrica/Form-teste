import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppText extends StatelessWidget {
  bool autofoco;
  String label;
  String hint;
  bool password;
  TextEditingController controller;
  FormFieldValidator<String> validator;
  TextInputType keyboardType;
  TextInputAction textInputAction;
  FocusNode focusNode;
  FocusNode nextFocus;
  Function onsave;
  Function onchange;
  String valorInicial;
  List<TextInputFormatter> mascara;
  bool teste;

  AppText(
    
    this.label,
    this.hint, {
    this.autofoco = false,
    this.password = false,
    this.controller,
    this.validator,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.nextFocus,
    this.onsave,
    this.valorInicial,
    this.mascara,
    this.teste,
    this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onchange,
      enabled: teste,
      inputFormatters: mascara,
      initialValue: valorInicial,
      onSaved: onsave,
      autofocus: autofoco,
      controller: controller,
      obscureText: password,
      validator: validator,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      focusNode: focusNode,
      onFieldSubmitted: (String text) {
        if (nextFocus != null) {
          FocusScope.of(context).requestFocus(nextFocus);
        }
      },
      style: TextStyle(
        fontSize: 25,
        color: Colors.grey,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        labelText: label,
        labelStyle: TextStyle(
          fontSize: 25,
          color: Colors.black,
        ),
        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}
