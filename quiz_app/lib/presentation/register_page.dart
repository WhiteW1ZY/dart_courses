import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  AppProvider get appProvider => AppProvider.of(context);

  bool _isHideInput = true;
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _registration() async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    final String email = _emailController.text;
    final String password = _passwordController.text;

    final authService = appProvider.authService;

    setState(() => _isLoading = true);

    try {
      await authService.registerWithEmailAndPassword(email, password);
    } on FirebaseAuthException catch (ex) {
      appProvider.snackBarDispatcher(ex.message ?? "");
    } catch (ex) {
      appProvider.snackBarDispatcher(ex.toString());
    }

    setState(() => _isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    final glossary = S.of(context);
    final theme = Theme.of(context);

    return Scaffold(
      appBar: _isLoading ? null : AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: ConstrainedBox(
              constraints: const BoxConstraints(maxWidth: 400),
              child: Column(
                mainAxisAlignment: .center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    glossary.registration,
                    style: theme.textTheme.headlineSmall!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 8),

                  Text(
                    glossary.willBeFriends,
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color: Colors.grey.shade600,
                    ),
                  ),

                  const SizedBox(height: 40),

                  Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        TextFormField(
                          controller: _emailController,
                          readOnly: _isLoading,
                          decoration: InputDecoration(
                            labelText: glossary.email,
                            prefixIcon: const Icon(Icons.email_outlined),
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if ((value == null) || (!value.contains("@"))) {
                              return glossary.non_valid_email_message;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 20),

                        TextFormField(
                          controller: _passwordController,
                          readOnly: _isLoading,
                          obscureText: _isHideInput,
                          decoration: InputDecoration(
                            labelText: glossary.password,
                            prefixIcon: const Icon(Icons.lock_outline_rounded),
                            suffixIcon: IconButton(
                              icon: Icon(
                                _isHideInput
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                              ),
                              onPressed: () {
                                setState(() {
                                  _isHideInput = !_isHideInput;
                                });
                              },
                            ),
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 14,
                            ),
                          ),
                          validator: (value) {
                            if ((value == null) || (value.length < 6)) {
                              return glossary.non_valid_password_message;
                            }
                            return null;
                          },
                        ),

                        const SizedBox(height: 32),

                        _isLoading
                            ? const Center(child: CircularProgressIndicator())
                            : ElevatedButton(
                                onPressed: _registration,
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black,
                                  foregroundColor: Colors.white,
                                  minimumSize: const Size(0, 48),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  elevation: 0,
                                ),
                                child: Text(
                                  glossary.register,
                                  style: const TextStyle(fontSize: 16),
                                ),
                              ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  Text(
                    glossary.come_up_email_and_password,
                    style: theme.textTheme.bodySmall!.copyWith(
                      color: Colors.grey.shade500,
                    ),
                    textAlign: TextAlign.center,
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
