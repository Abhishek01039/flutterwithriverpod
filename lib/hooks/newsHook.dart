import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final countHook = Provider<int>((ref) => 0);
final example = StreamProvider((ref) {
  final streamController = StreamController<int>();
  increment() {
    // ref.read(countHook).value;
    streamController.sink.add(ref.read(countHook).value);
  }

  AsyncValue.data(ref.read(countHook).value);

  streamController.sink.add(ref.read(countHook).value);
  ref.onDispose(() {
    // Closes the StreamController when the state of this provider is destroyed.
    streamController.close();
  });

  return streamController.stream;
});

final futureProvider = FutureProvider<int>((ref) async {
  // final controller=useTextEditingController();
  // Future.delayed(Duration(seconds: 2)).then((value) {
  //   return 0;
  // });
  int count = 0;
  Future<int> increment() async {
    return ++count;
  }

  return increment();
});
