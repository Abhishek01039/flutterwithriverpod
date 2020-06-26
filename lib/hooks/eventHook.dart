import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:state_notifier/state_notifier.dart';

class EventProvider extends StateNotifier<List<dynamic>> {
  EventProvider() : super([]);
  // List<dynamic> events = [];
  event() async {
    state.clear();
    final instance = Firestore.instance;
    QuerySnapshot qsnap = await instance.collection("Events").getDocuments();
    List<DocumentSnapshot> doc = qsnap.documents;
    state.addAll(doc);
    return state;
    // doc.map((e) => print(e.data['Name']));
    // log("document from firebase" + doc[0].data['Name']);
  }
}

final eventHook = StateNotifierProvider((ref) => EventProvider());
