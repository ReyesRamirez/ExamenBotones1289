import 'package:flutter/material.dart';
import 'package:ramirez1289/pagina_uno.dart';
import 'package:ramirez1289/pagina_aboutdialog.dart';
import 'package:ramirez1289/pagina_card.dart';
import 'package:ramirez1289/pagina_image_filtered.dart';
import 'package:ramirez1289/pagina_listview.dart';
import 'package:ramirez1289/pagina_radial_n_sweep_gradient.dart';
import 'package:ramirez1289/pagina_richtext.dart';
import 'package:ramirez1289/pagina_silverappbar.dart';
import 'package:ramirez1289/pagina_fade_transition.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Entre Paginas Routes',
      initialRoute: '/',
      routes: {
        '/': (context) => const PantallaUno(),
        '/pantalla2': (context) => MyListView(),
        '/pantalla3': (context) => const MySliverAppBar(),
        '/pantalla4': (context) => const MyRichText(),
        '/pantalla5': (context) => const MyCard(),
        '/pantalla6': (context) => const MyRadialNSeepGradient(),
        '/pantalla7': (context) => const MyAboutDialog(),
        '/pantalla8': (context) => const MyImageFiltered(),
        '/pantalla9': (context) => const MyFadeTransition(),
      },
    );
  }
}
