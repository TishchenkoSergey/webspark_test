import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget {
  const CustomLoader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const size = 200.0;

    return TweenAnimationBuilder(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(seconds: 4),
      builder: (context, value, child) {
        final percentage = (value * 100).ceil();
        return SizedBox(
          width: size,
          height: size,
          child: Stack(
            children: [
              ShaderMask(
                shaderCallback: (rect) {
                  return SweepGradient(
                      startAngle: -0.25,
                      endAngle: 3.14 * 2,
                      stops: [value, value],
                      colors: [Colors.blue, Colors.grey.withAlpha(55)]).createShader(rect);
                },
                child: Container(
                  width: size,
                  height: size,
                  decoration: const BoxDecoration(shape: BoxShape.circle, color: Colors.white),
                ),
              ),
              Center(
                child: Container(
                  width: size - 40,
                  height: size - 40,
                  decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      '$percentage',
                      style: const TextStyle(fontSize: 40),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
