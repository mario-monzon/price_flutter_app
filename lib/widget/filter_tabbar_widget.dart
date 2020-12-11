import 'dart:ui';

import 'package:flutter/material.dart';

class FilterTabBar extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<FilterTabBar> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelStyle: TextStyle(fontWeight: FontWeight.bold),
          unselectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
          labelColor: Colors.blue,
          unselectedLabelColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.tab,
          indicatorColor: Colors.blue,
          labelPadding: EdgeInsets.all(0),
          indicatorPadding: EdgeInsets.all(0),
          tabs: <Widget>[
            Tab(
              text: 'COLOR',
            ),
            Tab(
              text: 'SIZE',
            ),
            Tab(
              text: 'PRICE',
            ),
            Tab(
              text: 'SERIE',
            )
          ],
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.3,
          child: TabBarView(
            controller: _tabController,
            children: [
              Text('COLOR'),
              Text('SIZE'),
              Text('PRICE'),
              Text('SERIE'),
            ],
          ),
        )
      ],
    );
  }

  Widget priceFilter() {
    double _currentSliderValue = 20;

    return Slider(
      value: _currentSliderValue,
      min: 0,
      max: 100,
      divisions: 5,
      label: _currentSliderValue.round().toString(),
      onChanged: (double value) {
        setState(() {
          _currentSliderValue = value;
        });
      },
    );
  } // priceFilter
}
