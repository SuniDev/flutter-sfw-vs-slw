import 'package:flutter/material.dart';

class SLWPage extends StatelessWidget {
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('StatefulWidget Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$_count",
                style: const TextStyle(fontSize: 30),
              ),
              ElevatedButton(
                onPressed: () {
                    _count++;
                    print('onPressed : $_count');
                },
                child: const Text('+'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
