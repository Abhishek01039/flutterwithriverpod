// import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class News extends HookWidget {
  @override
  Widget build(BuildContext context) {
    // final example1 = useProvider(example);
    // var counter = useProvider(countHook);
    // var future = useProvider(futureProvider).data.value;
    // return Center(
    //   child: Column(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     children: [
    //       // future.when(
    //       // data: (val) {
    //       Text(future.toString()),
    //       // },
    //       // loading: () {
    //       //   return CircularProgressIndicator();
    //       // },
    //       // error: (val, e) {
    //       //   return Text(e.toString());
    //       // },
    //       // ),
    //       SizedBox(
    //         height: 100,
    //       ),
    //       RaisedButton(
    //         onPressed: () {
    //           // Computed((read) {
    //           // futureProvider.read(context).data.value++;
    //           print(future);
    //           // });
    //         },
    //         child: Text("Increment"),
    //       )
    //     ],
    //   ),
    // );
    return Center(
      child: Text("News"),
    );
  }
}
