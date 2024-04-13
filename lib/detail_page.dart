import 'package:flutter/material.dart';

import 'models/card_item.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({
    super.key,
    required this.item,
  });

  final CardItem item;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blueAccent.withOpacity(0.2),
      ),
    );
  }
}
