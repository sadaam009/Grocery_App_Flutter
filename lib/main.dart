import 'package:flutter/material.dart';
import 'home_intro.dart';
import 'intro_page.dart';
import 'package:provider/provider.dart';
import 'model/cart_model.dart';

void main() {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => Cart_Model(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            "/": (context) => const Home_Intro(),
            "/intro_page": (context) => const intro_page()
          },
        ));
  }
}
