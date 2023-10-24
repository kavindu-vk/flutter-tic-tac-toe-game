import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tic_tac_toe_game/screens/game.dart';
import 'package:page_transition/page_transition.dart';

class SpalshScreen extends StatelessWidget {
  const SpalshScreen({super.key});

  static var customFont = GoogleFonts.coiny(
    textStyle: const TextStyle(
      color: Color(0xFFffca27),
      letterSpacing: 3,
      fontSize: 28,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      backgroundColor: Colors.black,
      splash: Text(
        "Tic-Tac-Toe Game",
        style: customFont,
      ),
      nextScreen: GameScreen(),
      splashTransition: SplashTransition.rotationTransition,
      pageTransitionType: PageTransitionType.bottomToTop,
      duration: 2500,
    );
  }
}
