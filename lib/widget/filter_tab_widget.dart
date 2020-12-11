import 'package:flutter/material.dart';

class FilterTableWidget extends StatelessWidget {
  const FilterTableWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
          length: 4,
          child: Column(
            children: [
              Container(
                constraints: BoxConstraints(maxHeight: 150.0),
                child: Material(
                  color: Colors.white,
                  child: TabBar(
                    labelStyle: TextStyle(fontWeight: FontWeight.bold),
                    unselectedLabelStyle:
                        TextStyle(fontWeight: FontWeight.bold),
                    labelColor: Colors.blue,
                    unselectedLabelColor: Colors.black,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicatorColor: Colors.blue,
                    labelPadding: EdgeInsets.all(0),
                    indicatorPadding: EdgeInsets.all(0),
                    tabs: [
                      Text('Color'),
                      Text('Measure'),
                      Text('Price'),
                      Text('Series'),
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: TabBarView(
                children: [
                  Text('Color'),
                  Text('Measure'),
                  Text('Price'),
                  Text('Series'),
                ],
              ))
            ],
          )),
    );
  }
}
