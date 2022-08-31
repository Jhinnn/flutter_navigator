import 'package:flutter/material.dart';
import 'package:flutter_navigator/pages/page5.dart';

class PageFour extends StatelessWidget {
  const PageFour({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page4'),

      ),
      body: Center(child: IconButton(icon: const Icon(Icons.h_mobiledata),onPressed: (){
         Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const PageFive()));
      },),),
    );
  }
}
