import 'package:flutter/material.dart';

/// This is the stateful widget that the main application instantiates.
class SliderFilter extends StatefulWidget {
  SliderFilter({Key key}) : super(key: key);

  @override
  _SliderFilterState createState() => _SliderFilterState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _SliderFilterState extends State<SliderFilter> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
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
  }
}
