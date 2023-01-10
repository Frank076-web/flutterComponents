import 'package:flutter/material.dart';
import 'package:flutter_components/theme/AppTheme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _switchEnabled = false;

  void onChangedSlider(double value) {
    _sliderValue = value;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sliders and Checks'),
      ),
      body: Column(
        children: [
          Slider.adaptive(
            max: 400,
            activeColor: AppTheme.primaryColor,
            value: _sliderValue,
            onChanged:
                _switchEnabled ? (value) => onChangedSlider(value) : null,
          ),
          SwitchListTile.adaptive(
              title: const Text("Habilitar Slider"),
              activeColor: AppTheme.primaryColor,
              value: _switchEnabled,
              onChanged: (value) {
                _switchEnabled = value;
                setState(() {});
              }),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://www.nicepng.com/png/detail/433-4336827_banner-batman-from-the-animated-animado-dibujos-de.png'),
                fit: BoxFit.contain,
                width: _sliderValue,
              ),
            ),
          ),
          const SizedBox(height: 100)
        ],
      ),
    );
  }
}
