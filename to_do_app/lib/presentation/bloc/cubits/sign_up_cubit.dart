import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/exceptions/authorization_exception.dart';
import 'package:to_do_app/domain/forms/email_validator.dart';
import 'package:to_do_app/domain/forms/password_validator.dart';
import 'package:to_do_app/domain/usecases/auth/sign_up_usecase.dart';
import 'package:to_do_app/presentation/bloc/state/sign_up_state/sign_up_state.dart';

@injectable
class SignUpCubit extends Cubit<SignUpState> {
  final SignUpUsecase _signUpUsecase;

  bool get isHidePassword => state.isHidePassword;

  void switchIsShowPasswordState() {
    emit(state.copyWith(isHidePassword: !isHidePassword));
  }

  SignUpCubit(this._signUpUsecase) : super(const SignUpState());

  void onEmailChange(String value) {
    final emailValidator = EmailValidator.dirty(value);
    emit(state.copyWith(emailValidator: emailValidator));
  }

  void onPasswordChange(String value) {
    final passwordValidator = PasswordValidator.dirty(value);
    emit(state.copyWith(passwordValidator: passwordValidator));
  }

  Future<void> onSubmit() async {
    emit(state.copyWith(signUpState: .loading()));

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
      emit(state.copyWith(signUpState: .initial()));
      return;
    }

    try {
      await _signUpUsecase.registerWithEmailAndPassword(
        emailValidator.value,
        passwordValidator.value,
      );
      emit(state.copyWith(signUpState: .success()));
    } catch (ex) {
      String exeptionText = ex is AuthorizationException
          ? ex.message
          : ex.toString();
      emit(state.copyWith(signUpState: .error(exeptionText)));
    }
    emit(state.copyWith(signUpState: .initial()));
  }
}
