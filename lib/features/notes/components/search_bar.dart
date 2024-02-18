import '../../../main.dart';

class SearchBarUI extends UI {
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
          child: TextField(),
        ), // Text('Search your notes'),
        Spacer(),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.list),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(Icons.grid_4x4),
        ),
        CircleAvatar(
          child: Icon(Icons.av_timer_sharp),
        ),
      ],
    );
  }
}
