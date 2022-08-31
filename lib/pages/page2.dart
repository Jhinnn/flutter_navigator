import 'package:flutter/material.dart';
import 'package:flutter_navigator/pages/page3.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page2'),

      ),
      body: Center(child: IconButton(icon: const Icon(Icons.h_mobiledata),onPressed: (){
         Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const PageThree()));
      },),),
    );
  }
}
