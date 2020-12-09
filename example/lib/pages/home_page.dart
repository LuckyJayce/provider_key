import 'package:example/pages/demos_page.dart';

import 'demos/counter_page.dart';

class HomePage extends DemosPage{

  HomePage()
      : super('HomePage', {
    '/CountPage': (context) => CounterPage(),
  });
}
