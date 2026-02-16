import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/app/extension/context_extensions.dart';
import 'package:to_do_app/presentation/bloc/cubits/application_cubit.dart';
import 'package:to_do_app/presentation/bloc/cubits/profile_cubit.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: .all(24),
            child: Column(
              mainAxisAlignment: .start,
              crossAxisAlignment: .stretch,
              children: [
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: context.theme.colorScheme.secondary,
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.person,
                    color: context.theme.colorScheme.primary,
                    size: 60,
                  ),
                ),

                Padding(
                  padding: const .symmetric(vertical: 30),
                  child: Text(
                    context.read<ProfileCubit>().userEmail,
                    style: TextStyle(fontSize: 22),
                    textAlign: .center,
                  ),
                ),

                OutlinedButton(
                  onPressed: context.read<ApplicationCubit>().setDartTheme,
                  child: Text(context.glossary.dart_theme),
                ),
                const SizedBox(height: 10),
                OutlinedButton(
                  onPressed: context.read<ApplicationCubit>().setLightTheme,
                  child: Text(context.glossary.light_theme),
                ),
                const SizedBox(height: 30),

                OutlinedButton(
                  onPressed: context.read<ProfileCubit>().logout,
                  child: Text(context.glossary.sign_out_from_account),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
