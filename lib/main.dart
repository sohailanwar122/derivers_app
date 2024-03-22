import 'package:derivers_app/presentation/splash_screen/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  );
  runApp(
    MyApp(
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Drivers App',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const SplashScreen(),
        ),
      ),
  );
}

class MyApp extends StatefulWidget
{
  final Widget? child;

  const MyApp({super.key, this.child});

  static void restartApp(BuildContext context)
  {

    context.findAncestorStateOfType<_MyAppState>()!.restartApp();
  }

  @override
  State createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  Key key = UniqueKey();

  void restartApp()
  {
    setState(() {
      key = UniqueKey();
    });
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child!,
    );
  }
}
