import 'package:flutter/material.dart';
import 'package:quiz_app/generated/l10n.dart';
import 'package:quiz_app/presentation/providers/app_provider.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    final glossary = S.of(context);
    final appProvider = AppProvider.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(glossary.profile), centerTitle: true),
      body: SafeArea(
        child: StreamBuilder(
          stream: appProvider.authService.userStream,
          builder: (context, snapshot) {
            final user = snapshot.data;
            if (user == null) {
              return Text(glossary.user_not_found);
            }

            final uuid = user.uid;
            final email = user.email;
            final isEmailVerified = user.emailVerified;

            return Center(
              child: Padding(
                padding: const .all(24),
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 400),
                  child: Column(
                    mainAxisAlignment: .center,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        glossary.your_id(uuid),
                        style: const TextStyle(fontSize: 20),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        glossary.your_email(email ?? glossary.email_not_found),
                        style: const TextStyle(fontSize: 20),
                      ),

                      const SizedBox(height: 16),

                      Text(
                        glossary.your_email_verified(
                          isEmailVerified ? glossary.yes : glossary.no,
                        ),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
