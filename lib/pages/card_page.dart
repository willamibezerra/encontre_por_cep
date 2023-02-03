import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardPageState();
}

class _CardPageState extends State<CardPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Column(
            children: const [
              Text(
                'data',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'data',
                style: TextStyle(fontSize: 26),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        )
      ],
    );
  }
}
