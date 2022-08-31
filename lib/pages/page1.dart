import 'package:flutter/material.dart';
import 'package:flutter_navigator/pages/page2.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page1'),

      ),
      body: Center(child: IconButton(icon: const Icon(Icons.h_mobiledata),onPressed: (){
        Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const PageTwo()));
      },),),
    );
  }
}
