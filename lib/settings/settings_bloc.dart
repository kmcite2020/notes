import 'settings.dart';

String themeMode([String? themeMode]) {
  if (themeMode != null) settings(settings()..themeMode = themeMode);
  return settings().themeMode;
}

String viewMode([String? viewMode]) {
  if (viewMode != null) settings(settings()..viewMode = viewMode);
  return settings().viewMode;
}
