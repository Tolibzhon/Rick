import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick/core/functions/push_router_func.dart';
import 'package:rick/routes/mobile_auto_router.gr.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'splash_state.dart';
part 'splash_cubit.freezed.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit({required this.prefs}) : super(const SplashState.initial()) {
    getAuth();
  }
  final SharedPreferences prefs;

  Future<void> getAuth() async {
    // final token = prefs.getString(SharedKeys.token) ?? '';
    await Future.delayed(const Duration(seconds: 2));

    // if (token.isEmpty) {
    //   AppRouting.pushAndPopUntilFunction(const AuthRoute());
    // } else {
    AppRouting.pushAndPopUntilFunction(BottomNavigatorRoute());
    // }
  }
}
