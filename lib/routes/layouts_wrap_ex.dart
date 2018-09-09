import 'package:flutter/material.dart';
import '../my_route.dart';

class WrapExample extends MyRoute {
  const WrapExample([String sourceFile = 'lib/routes/layouts_wrap_ex.dart'])
      : super(sourceFile);

  @override
  get title => 'Wrap';

  @override
  get description => 'Wrap to the next row/column when run out of room.';

  @override
  get links => {
        "Youtube video": "https://www.youtube.com/watch?v=z5iw2SeFx2M",
        'Doc': 'https://docs.flutter.io/flutter/widgets/Wrap-class.html',
      };

  @override
  Widget buildMyRouteContent(BuildContext context) {
    return Wrap(
      spacing: 8.0, // gap between adjacent chips
      runSpacing: 4.0, // gap between lines
      children: <Widget>[
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('AH')),
          label: Text('Hamilton'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('ML')),
          label: Text('Lafayette'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('HM')),
          label: Text('Mulligan'),
        ),
        Chip(
          avatar: CircleAvatar(
              backgroundColor: Colors.blue.shade900, child: Text('JL')),
          label: Text('Laurens'),
        ),
      ],
    );
  }
}
