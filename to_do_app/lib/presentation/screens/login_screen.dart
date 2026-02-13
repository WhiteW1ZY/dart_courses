import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:to_do_app/app/di/injection.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/app/navigation/router/routes/login_route.dart';
import 'package:to_do_app/domain/forms/email_validator.dart';
import 'package:to_do_app/presentation/bloc/side_effects/authorization_side_effect.dart';
import 'package:to_do_app/presentation/bloc/cubits/sign_in_cubit.dart';
import 'package:to_do_app/presentation/bloc/state/process_state/process_state.dart';
import 'package:to_do_app/presentation/bloc/state/sign_in_state/sign_in_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/presentation/widgets/text_fields/email_validation_text_field.dart';
import 'package:to_do_app/presentation/widgets/text_fields/password_validation_text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _routes = getIt<LoginRoute>();

  late final StreamSubscription<AuthorizationSideEffect> _subscription;
  @override
  void initState() {
    super.initState();

    _subscription = context.read<SignInCubit>().sideEffects.listen((data) {
      if (!mounted) {
        return;
      }
      switch (data) {
        case ShowRegistrationPageSideEffect():
          context.push(_routes.registrationRoute.routeAbsolutePath);
      }
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignInCubit, SignInState>(
      listenWhen: (previous, current) =>
          previous.signInState != current.signInState,
      listener: (context, state) {
        final processState = state.signInState;
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
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const .symmetric(vertical: 60, horizontal: 25),
              child: Column(
                mainAxisAlignment: .start,
                children: [
                  Align(
                    alignment: .topRight,
                    child: BlocSelector<SignInCubit, SignInState, bool>(
                      selector: (state) => state.signInState == .loading(),
                      builder: (context, isLoading) => TextButton(
                        onPressed: isLoading
                            ? null
                            : context.read<SignInCubit>().showRegistrationPage,
                        child: Text(context.glossary.sign_up),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: .center,
                      crossAxisAlignment: .start,
                      children: [
                        Text(
                          context.glossary.welcome,
                          style: const TextStyle(fontSize: 40),
                        ),

                        const SizedBox(height: 15),

                        Text(
                          context.glossary.welcome_back_message,
                          style: TextStyle(
                            fontSize: 15,
                            color: context.theme.colorScheme.secondary,
                          ),
                        ),

                        const SizedBox(height: 60),

                        BlocSelector<SignInCubit, SignInState, bool>(
                          selector: (state) => state.signInState == .loading(),
                          builder: (context, isLoading) => Column(
                            children: [
                              BlocSelector<
                                SignInCubit,
                                SignInState,
                                EmailValidator
                              >(
                                selector: (state) => state.emailValidator,
                                builder: (context, validator) =>
                                    EmailValidationTextField(
                                      onChanged: context
                                          .read<SignInCubit>()
                                          .onEmailChange,
                                      emailValidationError:
                                          validator.displayError,
                                      readOnly: isLoading,
                                    ),
                              ),

                              const SizedBox(height: 20),

                              BlocBuilder<SignInCubit, SignInState>(
                                buildWhen: (previous, current) =>
                                    previous.isHidePassword !=
                                        current.isHidePassword ||
                                    previous.passwordValidator !=
                                        current.passwordValidator,
                                builder: (context, state) =>
                                    PasswordValidationTextField(
                                      onChanged: context
                                          .read<SignInCubit>()
                                          .onPasswordChange,
                                      passwordValidationError:
                                          state.passwordValidator.displayError,
                                      suffixIconAction: context
                                          .read<SignInCubit>()
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
                                            .read<SignInCubit>()
                                            .onSubmit(),
                                        style: ElevatedButton.styleFrom(
                                          fixedSize: Size(120, 50),
                                        ),
                                        child: Row(
                                          mainAxisAlignment: .spaceEvenly,
                                          children: [
                                            Text(
                                              context.glossary.sign_in,
                                              style: const TextStyle(
                                                fontSize: 18,
                                                fontWeight: .bold,
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              size: 18,
                                            ),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
