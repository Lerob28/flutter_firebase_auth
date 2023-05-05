import 'package:complete/auth_gate.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'app.dart';
import 'firebase_options.dart';

const clientId = '280688372552-pj9t3jf8o9ilhssorpts9rigqurhag6m.apps.googleusercontent.com';

void main() async {
  /**
   * indique à Flutter de ne pas démarrer l'exécution du code du widget d'application
   *  tant que le framework Flutter n'est pas complètement démarré.
   */
  WidgetsFlutterBinding.ensureInitialized(); 

  /**
   * établit une connexion entre votre application Flutter et votre projet Firebase
   */
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AuthGateWithGoogleSignIn(clientId: clientId,), // AuthGate(),
  ));
}
