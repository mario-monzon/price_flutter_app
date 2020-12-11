import 'package:flutter/material.dart';
import 'package:price_flutter_widget/screen/home_screen.dart';
import 'package:price_flutter_widget/screen/iconbtn_screen.dart';

import 'file:///C:/Users/mario.monzon/FlutterProjects/price_flutter_widget/lib/widget/filter_tab_widget.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      initialRoute: 'icon_btn',
      routes: {
        '/': (_) => HomeScreen(),
        'slider': (_) => FilterTableWidget(),
        'icon_btn': (_) => IconBtnScreen(),
      },
    );
  }
}
