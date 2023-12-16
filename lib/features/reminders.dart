import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class RemindersPage extends ReactiveStatelessWidget {
  const RemindersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar.medium(
          title: Text(
            'Reminders',
          ),
          actions: [],
        ),
      ],
    );
  }
}
