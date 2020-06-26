import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';

// import 'package:state_notifier/state_notifier.dart';
final darkModeHook = StateProvider((ref) => false);

// class DarkModeProvider extends StateNotifier<bool> {
//   DarkModeProvider() : super(false);
//   bool isDark = false;
//   // bool get isDark => _isDark;
//   changeTheme(bool value) {
//     isDark = value;
//   }
// }

// final darkModeHook = StateNotifierProvider((ref) => DarkModeProvider());
