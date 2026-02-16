import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/forms/email_validator.dart';
import 'package:to_do_app/domain/forms/password_validator.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';

part 'sign_in_state.freezed.dart';

@freezed
abstract class SignInState with _$SignInState {
  const factory SignInState({
    @Default(EmailValidator.pure()) EmailValidator emailValidator,
    @Default(PasswordValidator.pure()) PasswordValidator passwordValidator,
    @Default(true) bool isHidePassword,
    @Default(ProcessState.initial()) ProcessState signInState,
  }) = _SignInState;
}
