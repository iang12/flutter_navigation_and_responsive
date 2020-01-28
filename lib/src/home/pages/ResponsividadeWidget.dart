import 'package:flutter/material.dart';

class ResponsividadeWidget extends StatefulWidget {
  @override
  _ResponsividadeWidgetState createState() => _ResponsividadeWidgetState();
}

class _ResponsividadeWidgetState extends State<ResponsividadeWidget> {
  double getValue({double value, double max, double min}) {
    if (value < max && value > min) {
      return value;
    } else if (value < min) {
      return min;
    } else {
      return max;
    }
  }

  Widget _getQuadrado({Color color}) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    return ConstrainedBox(
      constraints: BoxConstraints(
          minWidth: 200, minHeight: 200, maxHeight: 400, maxWidth: 400),
      child: Container(
        alignment: Alignment.center,
        color: color,
        child: Text(
          ' largura ${mediaQuery.size.width} altura ${mediaQuery.size.height.toStringAsFixed(2)}',
          style: TextStyle(
              fontSize: getValue(
                  value: mediaQuery.size.width * 0.03, min: 12, max: 24)),
        ),
        height: mediaQuery.size.height * 0.25,
        width: mediaQuery.size.width * 0.5,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 700) {
          return _getQuadrado(color: Colors.pink);
        }
        return _getQuadrado(color: Colors.blueAccent);
      },
    ));
  }
}
