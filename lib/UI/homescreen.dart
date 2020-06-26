import 'package:flutter/material.dart';
import 'package:flutterriverpod/UI/MapsScreen.dart';
import 'package:flutterriverpod/UI/eventsScreen.dart';
import 'package:flutterriverpod/UI/mobalityScreen.dart';
import 'package:flutterriverpod/UI/newsScreen.dart';
import 'package:flutterriverpod/UI/widget/drawer.dart';
import 'package:flutterriverpod/hooks/bottomIndexHook.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

// We create a "provider", which will store a value (here "Hello world").
// By using a provider, this allows us to mock/override the value exposed.

// Note: MyApp is a HookWidget, from flutter_hooks.
class RiverPod extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // To read our provider, we can use the hook "useProvider".
    // This is only possible because MyApp is a HookWidget.
    List<Widget> _widgetOptions = <Widget>[
      News(),
      EventScreen(),
      Maps(),
      Mobality()
    ];
    // final count = useProvider(bottomNavigationHook).state;
    // print(count);
    // return Text('$count');
    return Consumer(
      (context, read) {
        return MaterialApp(
          theme: ThemeData.dark(),
          home: Scaffold(
            appBar: AppBar(
              title: const Text('BottomNavigationBar Sample'),
            ),
            drawer: Menu(),
            body: _widgetOptions.elementAt(read(bottomNavigationHook).state),
            bottomNavigationBar: BottomNavigationBar(
              showUnselectedLabels: true,
              unselectedItemColor: Colors.blue,
              elevation: 4,
              // backgroundColor: Colors.transparent,
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  title: Text('News'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.event),
                  title: Text('Event'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.map),
                  title: Text('Map'),
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.mobile_screen_share),
                  title: Text('Mobality'),
                ),
              ],
              selectedItemColor: Colors.amber[800],
              currentIndex: read(bottomNavigationHook).state,
              onTap: (value) {
                bottomNavigationHook.read(context).state = value;
              },
            ),
          ),
        );
      },
    );
  }
}
