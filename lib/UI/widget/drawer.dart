import 'package:flutter/material.dart';
import 'package:flutterriverpod/hooks/darkThemeHook.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // final value = useProvider(darkModeHook);`/`

    return Consumer(
      (context, read) {
        return Drawer(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              Switch.adaptive(
                value: read(darkModeHook).state,
                onChanged: (value) {
                  print(darkModeHook.read(context).state);
                  darkModeHook.read(context).state = value;
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
