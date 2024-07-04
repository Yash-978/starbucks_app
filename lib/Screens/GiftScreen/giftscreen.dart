import 'package:flutter/material.dart';
class Giftscreen extends StatefulWidget {
  const Giftscreen({super.key});

  @override
  State<Giftscreen> createState() => _GiftscreenState();
}

class _GiftscreenState extends State<Giftscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gift Card'),
      ),
    );
  }
}
