import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class FeedbackPage extends ReactiveStatelessWidget {
  const FeedbackPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          title: Text('Feedback'),
        ),
        SliverList.list(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Will be implemented in future',
                textScaler: TextScaler.linear(2),
              ),
            )
          ],
        )
      ],
    );
  }
}
