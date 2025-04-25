import 'package:flutter/material.dart';

//! AnimatedCrossFade
//
class PaginaOcho extends StatefulWidget {
  const PaginaOcho({Key? key}) : super(key: key);

  @override
  State<PaginaOcho> createState() => _PaginaOchoState();
}

class _PaginaOchoState extends State<PaginaOcho> {
  bool _bool = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pantalla Seis'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: double.infinity,
              height: 100,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _bool = !_bool;
                });
              },
              child: const Text(
                'Switch',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            AnimatedCrossFade(
              firstChild: Image.asset(
                'assets/icon/blue.jpg',
                width: double.infinity,
              ),
              secondChild: Image.asset(
                'assets/icon/ocean.jpg',
                width: double.infinity,
              ),
              crossFadeState:
                  _bool ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
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
