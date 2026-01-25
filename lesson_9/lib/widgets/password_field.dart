import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passwordController;
  final FormFieldValidator? validator;
  const PasswordField({
    super.key,
    required this.passwordController,
    this.validator,
  });

  @override
  State<StatefulWidget> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isHidePassword = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isHidePassword,
      controller: widget.passwordController,
      validator: widget.validator,
      decoration: InputDecoration(
        border: const OutlineInputBorder(borderRadius: .all(.circular(8))),
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          onPressed: () => {
            setState(() {
              isHidePassword = !isHidePassword;
            }),
          },
          icon: Icon(
            isHidePassword
                ? Icons.remove_red_eye_outlined
                : Icons.remove_red_eye,
          ),
        ),
        labelText: "Пароль",
      ),
    );
  }
}
