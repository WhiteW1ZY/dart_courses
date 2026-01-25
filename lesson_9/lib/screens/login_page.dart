import 'package:flutter/material.dart';
import 'package:lesson_9/widgets/locked_box.dart';
import 'package:lesson_9/widgets/password_field.dart';
import 'package:lesson_9/widgets/text_divider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  void _authorizeAction() {
    final isValid = _formKey.currentState!.validate();
    if (isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.green,
          content: Text("You have been authorized!"),
        ),
      );
    }
  }

  void _forgotPasswordAction() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.deepPurple,
        content: Text("Password recovery action.."),
      ),
    );
  }

  void _createNewAccountAction() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Colors.amber,
        content: Text("Create new account action.."),
      ),
    );
  }

  void _logoClickAction() {
    print("click..");
  }

  @override
  void dispose() {
    passwordTextController.dispose();
    emailTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final elementWidth = size.width * 0.9;

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: elementWidth,
            child: Column(
              children: [
                const SizedBox(height: 35),

                GestureDetector(
                  onTap: _logoClickAction,
                  child: const LockedBox(),
                ),

                const SizedBox(height: 15),
                const Text(
                  "Вход в систему",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: .bold,
                    letterSpacing: 1.1,
                  ),
                ),

                const SizedBox(height: 25),

                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        controller: emailTextController,
                        validator: (value) {
                          if (value == null) {
                            return "email field cannot be empty";
                          } else if (!value.contains("@")) {
                            return 'email field must contain "@"';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: .all(.circular(8)),
                          ),
                          prefixIcon: Icon(Icons.mail),
                          labelText: "Email",
                        ),
                      ),

                      const SizedBox(height: 20),

                      PasswordField(
                        passwordController: passwordTextController,
                        validator: (value) {
                          if ((value == null) || (value.length < 6)) {
                            return "password field length should be at least 6";
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                Align(
                  alignment: .centerRight,
                  child: InkWell(
                    onTap: _forgotPasswordAction,
                    borderRadius: .all(.circular(8)),
                    child: const Text(
                      "Забыли пароль?",
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                ElevatedButton(
                  onPressed: _authorizeAction,
                  style: ElevatedButton.styleFrom(
                    fixedSize: const Size(double.maxFinite, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: .all(.circular(8)),
                    ),
                  ),
                  child: const Text("Войти"),
                ),

                const SizedBox(height: 20),

                const TextDivider(fieldText: "или"),

                const SizedBox(height: 20),

                TextButton(
                  onPressed: _createNewAccountAction,
                  child: Text("Создать новый аккаунт"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
