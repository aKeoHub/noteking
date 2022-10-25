import 'package:flutter/material.dart';
import 'package:noteking/constants/routes.dart';
import 'package:noteking/services/auth/auth_service.dart';
import 'package:noteking/views/login_view.dart';
import 'package:noteking/views/notes/new_note_view.dart';
import 'package:noteking/views/notes/notes_view.dart';
import 'package:noteking/views/register_view.dart';
import 'package:noteking/views/verify_email_view.dart';
// import 'dart:developer' as devtools show log;

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomePage(),
      routes: {
        loginRoute: (context) => const LoginView(),
        registerRoute: (context) => const RegisterView(),
        notesRoute: (context) => const NotesView(),
        verifyEmailRoute: (context) => const VerifyEmailView(),
        newNoteRoute: (context) => const NewNoteView(),
      },
    ),
  );
}

//
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: AuthService.firebase().initialize(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.done:
            // Grab the current user that's logged in
            final user = AuthService.firebase().currentUser;
            if (user != null) {
              if (user.isEmailVerified) {
              } else {
                return const VerifyEmailView();
              }
            } else {
              return const LoginView();
            }
            // When everything is done and the user is logged in and verfied.
            return const NotesView();
          default:
            return const CircularProgressIndicator();
        }
      },
    );
  }
}
