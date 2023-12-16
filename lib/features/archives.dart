import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class ArchivesPage extends ReactiveStatelessWidget {
  const ArchivesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar.large(
          title: SearchBar(),
          actions: [],
        ),
        SliverList.list(
          children: [
            Text(
              'Archives',
            )
          ],
        )
      ],
    );
  }
}
