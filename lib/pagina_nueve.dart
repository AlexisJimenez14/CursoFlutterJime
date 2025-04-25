import 'package:flutter/material.dart';

class PaginaNueve extends StatefulWidget {
  const PaginaNueve({Key? key}) : super(key: key);

  @override
  State<PaginaNueve> createState() => _PaginaNueveState();
}

class _PaginaNueveState extends State<PaginaNueve>
    with TickerProviderStateMixin {
  bool _isPlay = false;
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pantalla nueve'),
        ),
        body: Column(
          children: [
            Center(
              child: GestureDetector(
                onTap: () {
                  if (_isPlay == false) {
                    _controller.forward();
                    _isPlay = true;
                  } else {
                    _controller.reverse();
                    _isPlay = false;
                  }
                },
                child: AnimatedIcon(
                  icon: AnimatedIcons.play_pause,
                  progress: _controller,
                  size: 100,
                ),
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
