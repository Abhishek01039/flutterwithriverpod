import 'package:hooks_riverpod/hooks_riverpod.dart';

final helloWorldProvider = Provider((_) => 'Hello world');

final nameProvider = Provider<int>((ref) => 0);
//one provider inside other provider
final emphasisProvider = Provider<String>((ref) {
  final name = ref.read(nameProvider).value;
  return '$name!';
});
