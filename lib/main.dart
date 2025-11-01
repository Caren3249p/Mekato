import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'firebase_options.dart';

// Importa tus pantallas
import 'package:mekato/ui/screens/login_screen.dart';
import 'package:mekato/ui/screens/main_screen.dart'; // Pantalla con navegación inferior

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mekato',
      theme: ThemeData(
        primaryColor: const Color(0xFFE65100),
        scaffoldBackgroundColor: const Color(0xFFFFF3E0),
      ),
      // 🔥 Aquí decidimos qué pantalla mostrar al inicio
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // Mientras carga Firebase
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          // Si el usuario está logueado -> ir al menú principal
          if (snapshot.hasData) {
            return const MainScreen();
          }

          // Si no ha iniciado sesión -> mostrar login
          return const LoginScreen();
        },
      ),
    );
  }
}
