import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:to_do_app/domain/forms/email_validator.dart';
import 'package:to_do_app/domain/forms/password_validator.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';

part 'sign_up_state.freezed.dart';

@freezed
abstract class SignUpState with _$SignUpState {
  const factory SignUpState({
    @Default(EmailValidator.pure()) EmailValidator emailValidator,
    @Default(PasswordValidator.pure()) PasswordValidator passwordValidator,
    @Default(true) bool isHidePassword,
    @Default(ProcessState.initial()) ProcessState signUpState,
  }) = _SignUpState;
}
