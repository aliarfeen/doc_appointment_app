import 'package:doc_appointment_app/features/login/data/models/login_request_body.dart';
import 'package:doc_appointment_app/features/login/data/repos/login_repo.dart';
import 'package:doc_appointment_app/features/login/logic/cubit/login_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _LoginRepo;
  LoginCubit(this._LoginRepo) : super(const LoginState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void emitLoadingState(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _LoginRepo.login(loginRequestBody);
    response.when(
      success: (loginResponse) {
        emit(LoginState.success(loginResponse));
      },
      failure: (error) {
        emit(LoginState.error(error: error.apiErrorModel.message ?? ""));
      },
    );
  }
}
