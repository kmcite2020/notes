import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

import 'core/navigator.dart';

class DrawerBuilder extends ReactiveStatelessWidget {
  const DrawerBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NavigationDrawer(
        selectedIndex: selectedIndex,
        onDestinationSelected: onDestinationSelected,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Notes',
              textScaler: TextScaler.linear(3),
            ),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.notes),
            label: Text('Notes'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.info),
            label: Text('Reminders'),
          ),
          Divider(),
          NavigationDrawerDestination(
            icon: Icon(Icons.archive),
            label: Text('Archive'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.recycling),
            label: Text('Thrash'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.settings),
            label: Text('Settings'),
          ),
          NavigationDrawerDestination(
            icon: Icon(Icons.feedback),
            label: Text('Help & Feedback'),
          ),
        ],
      ),
    );
  }
}

final indexRM = RM.inject(() => 0);
set index(value) => indexRM.state = value;
void onDestinationSelected(i) {
  index = i;
  navigator.back();
  print(i);
}

int get selectedIndex => indexRM.state;
