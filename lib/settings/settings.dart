import '../main.dart';

@Entity()
class Settings {
  @Id()
  int id;
  String themeMode;
  String viewMode;
  Settings({
    this.id = 0,
    this.themeMode = 'dark',
    this.viewMode = 'list',
  });
}

final viewModes = ['list', 'grid'];
final themeModes = ['light', 'dark'];

final setBox = store.box<Settings>();

Settings settings([Settings? _]) {
  if (_ != null) setBox.put(_);
  return settingsRM.state;
}

final settingsRM = RM.injectStream<Settings>(
  () {
    return setBox
        .query()
        .watch(
          triggerImmediately: true,
        )
        .map(
          (event) => event.find().firstOrNull ?? Settings(),
        );
  },
  initialState: Settings(),
);
