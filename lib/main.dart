import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sharing_memo/firebase_options.dart';
import 'package:sharing_memo/src/data/storage/sqlite_service.dart';

import 'src/presentation/screens/intro/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final dbContainer = ProviderContainer();
  final dbInit = dbContainer.read(dbProvider.future);
  await dbInit;
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
