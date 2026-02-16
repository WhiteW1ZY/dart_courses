import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/exceptions/authorization_exception.dart';
import 'package:to_do_app/domain/forms/email_validator.dart';
import 'package:to_do_app/domain/forms/password_validator.dart';
import 'package:to_do_app/domain/usecases/auth/sign_in_usecase.dart';
import 'package:to_do_app/presentation/bloc/side_effects/authorization_side_effect.dart';
import 'package:to_do_app/presentation/bloc/state/authorization/sign_in_state/sign_in_state.dart';

@injectable
class SignInCubit extends Cubit<SignInState> {
  final SignInUsecase _signInUsecase;
  final _streamController = StreamController<AuthorizationSideEffect>();

  Stream<AuthorizationSideEffect> get sideEffects => _streamController.stream;

  @override
  Future<void> close() {
    _streamController.close();
    return super.close();
  }

  bool get isHidePassword => state.isHidePassword;

  void switchIsShowPasswordState() {
    emit(state.copyWith(isHidePassword: !isHidePassword));
  }

  SignInCubit(this._signInUsecase) : super(const SignInState());

  void onEmailChange(String value) {
    final emailValidator = EmailValidator.dirty(value);
    emit(state.copyWith(emailValidator: emailValidator));
  }

  void onPasswordChange(String value) {
    final passwordValidator = PasswordValidator.dirty(value);
    emit(state.copyWith(passwordValidator: passwordValidator));
  }

  Future<void> onSubmit() async {
    emit(state.copyWith(signInState: .loading()));
    final emailValidator = EmailValidator.dirty(state.emailValidator.value);
    final passwordValidator = PasswordValidator.dirty(
      state.passwordValidator.value,
    );

    emit(
      state.copyWith(
        emailValidator: emailValidator,
        passwordValidator: passwordValidator,
      ),
    );

    if (!Formz.validate([emailValidator, passwordValidator])) {
      emit(state.copyWith(signInState: .initial()));
      return;
    }

    try {
      await _signInUsecase.signInWithEmailAndPassword(
        emailValidator.value,
        passwordValidator.value,
      );
      emit(state.copyWith(signInState: .success()));
    } catch (ex) {
      String exeptionText = ex is AuthorizationException
          ? ex.message
          : ex.toString();
      emit(state.copyWith(signInState: .error(exeptionText)));
    }

    emit(state.copyWith(signInState: .initial()));
  }

  void showRegistrationPage() {
    _streamController.add(ShowRegistrationPageSideEffect());
  }
}
