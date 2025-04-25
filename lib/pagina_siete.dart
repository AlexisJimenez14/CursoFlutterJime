import 'package:flutter/material.dart';
import 'dart:math' as math;

class PaginaSiete extends StatefulWidget {
  const PaginaSiete({Key? key}) : super(key: key);

  @override
  State<PaginaSiete> createState() => _PaginaSieteState();
}

class _PaginaSieteState extends State<PaginaSiete>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pantalla Siete'),
        ),
        body: Column(
          children: [
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                child: const FlutterLogo(
                  size: 100,
                ),
                builder: (BuildContext context, Widget? child) {
                  return Transform.rotate(
                    angle: _controller.value * 2.0 * math.pi,
                    child: child,
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Regresar'),
              ),
            ),
          ],
        ));
  }
}
