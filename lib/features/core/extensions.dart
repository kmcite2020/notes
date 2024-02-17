import 'package:fluent_ui/fluent_ui.dart';

import '../../main.dart';

extension WidgetExtensions on Widget {
  Widget center() => Center(child: this);
  Widget pad({EdgeInsets? padding}) {
    return Padding(
      padding: padding ?? const EdgeInsets.all(8.0),
      child: this,
    );
  }
}

extension ObjectExtensions on Object? {
  Widget text({double scale = 1}) {
    return Text(
      toString(),
      textScaler: TextScaler.linear(scale),
    );
  }
}
