import 'package:rentomate/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rentomate/screens/searchLists.dart';
import 'package:rentomate/screens/search.dart';
import 'package:rentomate/utils/user_preferences.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:rentomate/screens/profile_page.dart';
import 'package:rentomate/themes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await UserPreferences.init();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyB8dclh0HsSuBjXZzcC1MBiycPRfs0RFlA", // Your apiKey
      appId: "1:161238456972:android:23523af723f735e569f9a9", // Your appId
      messagingSenderId: "", // Your messagingSenderId
      projectId: "tenant-finder-49047", // Your projectId
    ),
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  final user = UserPreferences.getUser();
    backgroundColor:
    Color.fromRGBO(252, 245, 238, 1.0);
    return MaterialApp(
      title: 'Rentomate',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
