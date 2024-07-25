import 'package:firebase_vertexai/firebase_vertexai.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vertexai_sample/data/repository/mock_recipe_repository_impl.dart';
import 'package:vertexai_sample/presentation/main_screen.dart';

import 'data/repository/recipe_repository_impl.dart';
import 'presentation/main_view_model.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (_) => MainViewModel(
          recipeRepository: RecipeRepositoryImpl(
            model: FirebaseVertexAI.instance.generativeModel(
              model: 'gemini-1.5-flash',
            ),
          ),
        ),
        child: const MainScreen(),
      ),
    );
  }
}
