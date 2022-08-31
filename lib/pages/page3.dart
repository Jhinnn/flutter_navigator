import 'package:flutter/material.dart';
import 'package:flutter_navigator/pages/page4.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page3'),

      ),
      body: Center(child: IconButton(icon: const Icon(Icons.h_mobiledata),onPressed: (){
         Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const PageFour()));
      },),),
    );
  }
}
