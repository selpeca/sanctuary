import 'package:flutter/material.dart';
import 'package:sanctuary/presentation/screens/notes_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _offset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 900),
    )..repeat(reverse: true);

    // Movimiento vertical de la "S": de arriba (-20) hacia abajo (20).
    _offset = Tween<double>(begin: -20, end: 20).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    // Navega a la pantalla principal después de la animación.
    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const NotesScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AnimatedBuilder(
          animation: _offset,
          builder: (context, child) {
            return Transform.translate(
              offset: Offset(0, _offset.value),
              child: child,
            );
          },
          child: const Text(
            'S',
            style: TextStyle(
              color: Color(0xFF004AC6),
              fontSize: 120,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
