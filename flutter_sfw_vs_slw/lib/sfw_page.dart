import 'package:flutter/material.dart';

class SFWPage extends StatefulWidget {
  @override
  _SFWPageState createState() => _SFWPageState();
}

class _SFWPageState extends State<SFWPage> {
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
                  setState(() {
                    _count++;
                    print('onPressed : $_count');
                  });
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
