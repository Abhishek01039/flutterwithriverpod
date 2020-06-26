import 'package:flutter/material.dart';
import 'package:flutterriverpod/hooks/eventHook.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EventScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer((context, read) {
      return FutureBuilder(
        future: read(eventHook).event(),
        // initialData: InitialData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData)
            return Center(
              child: CircularProgressIndicator(),
            );
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  elevation: 3,
                  child: ListTile(
                    title: Text(
                        "Event Name : " + snapshot.data[index].data['name']),
                    subtitle: Text(
                        "Event Type : " + snapshot.data[index].data['type']),
                    // trailing: Text("Event Type :" +
                    //     snapshot.data[index].data['time'].toString()),
                  ),
                );
              },
            ),
          );
        },
      );
    });
  }
}
