import 'package:flutter/material.dart';
import 'package:price_flutter_widget/widget/filter_tabbar_widget.dart';
import 'package:show_up_animation/show_up_animation.dart';

class IconBtnScreen extends StatefulWidget {
  IconBtnScreen({Key key}) : super(key: key);

  @override
  _IconBtnScreenState createState() => _IconBtnScreenState();
}

class _IconBtnScreenState extends State<IconBtnScreen> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon Btn'),
      ),
      bottomNavigationBar: bottomBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_alt),
        onPressed: () {
          setState(() {
            _visible = !_visible;
            // if (_visible) visibleAnimation();
          });
        },
      ),
      body: Container(
        child: Column(
          children: [
            Center(
              child: Stack(children: [
                Center(
                  child: FlutterLogo(
                    size: 200.0,
                  ),
                ),
                if (_visible) isVisibleAnimation(),
              ]),
            )
          ],
        ),
      ),
    );
  }

  Widget rSlider() {
    RangeValues _currentRangeValues = const RangeValues(40, 80);
    return RangeSlider(
      values: _currentRangeValues,
      min: 0,
      max: 100,
      divisions: 5,
      labels: RangeLabels(
        _currentRangeValues.start.round().toString(),
        _currentRangeValues.end.round().toString(),
      ),
      onChanged: (RangeValues values) {
        setState(() {
          _currentRangeValues = values;
        });
      },
    );
  }

  Widget isVisibleAnimation() {
    return ShowUpAnimation(
      delayStart: Duration(milliseconds: 0),
      animationDuration: Duration(milliseconds: 500),
      curve: _visible ? Curves.easeIn : Curves.bounceOut,
      direction: Direction.vertical,
      offset: -0.5,
      child: Visibility(
        visible: _visible,
        child: Stack(
          children: [
            Container(
              height: 600.0,
              color: Color.fromRGBO(0, 0, 0, 0.5),
            ),
            Container(
              color: Colors.white,
              child: FilterTabBar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget bottomBar() {
    int _selectedIndex = 0;
    const TextStyle _optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    const List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 0: Home',
        style: _optionStyle,
      ),
      Text(
        'Index 1: Business',
        style: _optionStyle,
      ),
      Text(
        'Index 2: School',
        style: _optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.business),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.school),
          label: 'School',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
