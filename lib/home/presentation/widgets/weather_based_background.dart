// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:auracast/core/shared/utils/generic_enums.dart';
import 'package:auracast/gen/assets.gen.dart';
import 'package:auracast/home/presentation/widgets/weather_image_provider.dart';

class WeatherBasedBackground extends StatelessWidget {
  const WeatherBasedBackground({required this.weatherType, super.key});
  final WeatherType? weatherType;

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Stack(
          children: [
            Container(
                decoration: BoxDecoration(
              image: DecorationImage(
                  image: getWeatherAsset(weatherType ?? WeatherType.clear)
                      .provider(),
                  fit: BoxFit.cover),
            )),
            Container(color: Colors.black.withOpacity(0.5))
          ],
        ),
        const Column(mainAxisAlignment: MainAxisAlignment.center, children: []),
        SizedBox(
          height: double.infinity,
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 7.0, sigmaY: 7.0),
            child: Container(
              color: Colors.black.withAlpha(1),
            ),
          ),
        ),
      ],
    );
  }
}
