import 'package:act5rutasjimenez/pagina_nueve.dart';
import 'package:act5rutasjimenez/pagina_ocho.dart';
import 'package:act5rutasjimenez/pagina_siete.dart';
import 'package:act5rutasjimenez/pagina_tres.dart';
import 'package:flutter/material.dart';
import 'package:act5rutasjimenez/pagina_uno.dart';
import 'package:act5rutasjimenez/pagina_dos.dart';
import 'package:act5rutasjimenez/pagina_cuatro.dart';
import 'package:act5rutasjimenez/pagina_cinco.dart';
import 'package:act5rutasjimenez/pagina_seis.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PantallaUno(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const PantallaDos(),
        '/pantalla3': (context) => const PantallaTres(),
        '/pantalla4': (context) => const PantallaCuatro(),
        '/pantalla5': (context) => const PantallaCinco(),
        '/pantalla6': (context) => const PaginaSeis(),
        '/pantalla7': (context) => const PaginaSiete(),
        '/pantalla8': (context) => const PaginaOcho(),
        '/pantalla9': (context) => const PaginaNueve(),
      },
    );
  }
}
