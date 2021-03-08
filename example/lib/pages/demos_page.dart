import 'package:flutter/material.dart';

class DemosPage extends StatelessWidget {
  final String title;
  final Map<String, WidgetBuilder> routes;

  DemosPage(this.title, this.routes);

  @override
  Widget build(BuildContext context) {
    List<String> paths = routes.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return MaterialButton(
            onPressed: () {
              Navigator.of(context)
                  .push(new MaterialPageRoute(builder: routes[paths[index]]!));
            },
            child: Text(paths[index].replaceAll("/", "")),
          );
        },
        itemCount: paths.length,
      ),
    );
  }
}
