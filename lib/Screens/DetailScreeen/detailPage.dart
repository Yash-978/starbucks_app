import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text('Caffe Americano'),

        actions: [

          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border),
            ),
          )
        ],
      ),
    );
  }
}
