import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/home_screen.dart';
import 'screens/lyrics_screen.dart';
import 'screens/user_profile_screen.dart';
import 'models/song.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App List Lagu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LoginScreen(),
      routes: {
        '/login': (context) => const LoginScreen(),
        '/home': (context) {
          final username = ModalRoute.of(context)?.settings.arguments as String?;
          return HomeScreen(username: username ?? 'User');
        },
        '/lyrics': (context) {
          final song = ModalRoute.of(context)?.settings.arguments as Song?;
          return LyricsScreen(song: song ?? Song(
            id: 0,
            title: 'Unknown',
            artist: 'Unknown',
            lyrics: 'No lyrics available',
          ));
        },
        '/profile': (context) {
          final username = ModalRoute.of(context)?.settings.arguments as String?;
          return UserProfileScreen(username: username ?? 'User');
        },
      },
    );
  }
}
