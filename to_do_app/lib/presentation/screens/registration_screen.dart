import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/domain/forms/email_validator.dart';
import 'package:to_do_app/presentation/bloc/cubits/sign_up_cubit.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';
import 'package:to_do_app/presentation/bloc/state/sign_up_state/sign_up_state.dart';
import 'package:to_do_app/presentation/widgets/text_fields/email_validation_text_field.dart';
import 'package:to_do_app/presentation/widgets/text_fields/password_validation_text_field.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignUpCubit, SignUpState>(
      listenWhen: (previous, current) =>
          previous.signUpState != current.signUpState,
      listener: (context, state) {
        final processState = state.signUpState;
        if (processState is ProcessErrorState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(processState.description)));
        } else if (processState is ProcessSuccessState) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(context.glossary.welcome)));
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const .symmetric(vertical: 60, horizontal: 25),
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    context.glossary.create_an_account,
                    style: const TextStyle(fontSize: 42),
                  ),

                  const SizedBox(height: 15),

                  Text(
                    context.glossary.will_be_nice_to_meet_you,
                    style: TextStyle(
                      fontSize: 15,
                      color: context.theme.colorScheme.secondary,
                    ),
                  ),

                  const SizedBox(height: 50),

                  BlocSelector<SignUpCubit, SignUpState, bool>(
                    selector: (state) => state.signUpState == .loading(),
                    builder: (context, isLoading) => Column(
                      children: [
                        BlocSelector<SignUpCubit, SignUpState, EmailValidator>(
                          selector: (state) => state.emailValidator,
                          builder: (context, validator) =>
                              EmailValidationTextField(
                                onChanged: context
                                    .read<SignUpCubit>()
                                    .onEmailChange,
                                emailValidationError: validator.displayError,
                                readOnly: isLoading,
                              ),
                        ),

                        const SizedBox(height: 20),

                        BlocBuilder<SignUpCubit, SignUpState>(
                          buildWhen: (previous, current) =>
                              previous.isHidePassword !=
                                  current.isHidePassword ||
                              previous.passwordValidator !=
                                  current.passwordValidator,
                          builder: (context, state) =>
                              PasswordValidationTextField(
                                onChanged: context
                                    .read<SignUpCubit>()
                                    .onPasswordChange,
                                passwordValidationError:
                                    state.passwordValidator.displayError,
                                suffixIconAction: context
                                    .read<SignUpCubit>()
                                    .switchIsShowPasswordState,
                                readOnly: isLoading,
                                isObcureText: state.isHidePassword,
                              ),
                        ),

                        const SizedBox(height: 60),

                        isLoading
                            ? const CircularProgressIndicator()
                            : Align(
                                alignment: .centerRight,
                                child: ElevatedButton(
                                  onPressed: () async => await context
                                      .read<SignUpCubit>()
                                      .onSubmit(),
                                  style: ElevatedButton.styleFrom(
                                    fixedSize: Size(200, 50),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: .spaceEvenly,
                                    children: [
                                      Text(
                                        context.glossary.registration,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: .bold,
                                        ),
                                      ),
                                      const Icon(Icons.arrow_forward, size: 18),
                                    ],
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
