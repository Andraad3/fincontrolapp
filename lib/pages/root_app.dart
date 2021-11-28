import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:fincontrolapp/pages/acoes.dart';
import 'package:fincontrolapp/pages/cadastro.dart';
import 'package:fincontrolapp/pages/gastos.dart';
import 'package:fincontrolapp/pages/grafico.dart';
import 'package:fincontrolapp/pages/perfil.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: getFooter(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setTabs(4);
        },
        child: const Icon(Icons.add, size: 25),
        backgroundColor: const Color(0xff9056ab),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget getBody() {
    return IndexedStack(
      index: pageIndex,
      children: const [
        GastosPage(),
        GraficosPage(),
        AcoesPage(),
        PerfilPage(),
        CadastroPage(),
      ],
    );
  }

  Widget getFooter() {
    List<IconData> iconItems = [
      Ionicons.md_home,
      Ionicons.md_stats,
      Ionicons.md_wallet,
      Ionicons.ios_person,
    ];

    return AnimatedBottomNavigationBar(
        icons: iconItems,
        activeColor: const Color(0xff9056ab),
        inactiveColor: Colors.grey,
        activeIndex: pageIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        leftCornerRadius: 10,
        iconSize: 25,
        rightCornerRadius: 10,
        onTap: (index) {
          setTabs(index);
        });
  }

  setTabs(index) {
    setState(() {
      pageIndex = index;
    });
  }
}
