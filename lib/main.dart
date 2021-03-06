import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  print('Firebase inicializado');
  runApp(AppWidget());
}
