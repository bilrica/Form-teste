import 'package:flutter/material.dart';

class DrawerLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: <Widget>[
        ListTile(
            leading: Icon(Icons.help),
            title: Text("Ajuda"),
            subtitle: Text("mais informações..."),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              print("mais informações ");
              Navigator.pop(context);
            }),
            ListTile(
            leading: Icon(Icons.account_circle),
            title: Text("Alterar"),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return null;
              }));
            }),
        
        ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text("Sair"),
            onTap: () {
              Navigator.pop(context);
            }),
            
      ],
    ));
  }
}



