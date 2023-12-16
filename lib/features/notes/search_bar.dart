import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';

class SearchBarUI extends ReactiveStatelessWidget {
  const SearchBarUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // IconButton(
        //   onPressed: navigator.scaffold.openDrawer,
        //   icon: Icon(Icons.menu),
        // ),
        SizedBox(
          width: 16,
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(borderSide: BorderSide.none)),
          ),
        ), // Text('Search your notes'),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.list_alt),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.grid_view),
        ),
        CircleAvatar(child: Icon(Icons.menu)),
      ],
    );
  }
}
