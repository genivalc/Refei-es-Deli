import 'package:flutter/material.dart';
import 'package:refeicao/ultis/app_routes.dart';

class MainDrawer extends StatelessWidget {
  Widget _createItem(IconData icon, String label, Function onTap) {
    return ListTile(
      leading: Icon(icon, size: 26),
      title: Text(label,
          style: TextStyle(
              fontFamily: "Raleway",
              fontSize: 22,
              fontWeight: FontWeight.w700)),
      onTap: onTap,
    );
  }

  bool themeSwitch = false;

  dynamic themeColors() {
    if (themeSwitch) {
      return Colors.grey[850];
    } else {
      return Colors.greenAccent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.black87,
            alignment: Alignment.bottomCenter,
            child: Text(
              "Vamos cozinhar?",
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),

          _createItem(
              Icons.restaurant,
              "Refeições",
              () => Navigator.of(context).pushReplacementNamed(
                  AppRoutes.HOME)), //remover a ultima e adicionar a atual
          _createItem(
              Icons.settings,
              "Configuração",
              () => Navigator.of(context)
                  .pushReplacementNamed(AppRoutes.SETTINGS)),
        ],
      ),
    );
  }
}
