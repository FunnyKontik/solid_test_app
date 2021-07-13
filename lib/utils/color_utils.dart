import 'dart:math';
import 'dart:ui';

class ColorUtils {
  static Color getRandomColor() {
    Random _random = Random();
    return Color.fromRGBO(
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        1);
  }
}
