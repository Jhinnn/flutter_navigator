import 'package:flutter/material.dart';
import 'package:flutter_navigator/main.dart';
import 'package:flutter_navigator/pages/page1.dart';

class PageFive extends StatelessWidget {
  const PageFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('page5'),
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        MaterialButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('上一页'),
        ),
        const SizedBox(
          height: 40,
        ),
        MaterialButton(
          onPressed: () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => const PageOne()),
            ModalRoute.withName('/'),
          ),
          child: const Text('回到第一页'),
        ),
        const SizedBox(
          height: 40,
        ),
        MaterialButton(
          onPressed: () =>Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => const MyHomePage(title: '首页',)),
            ModalRoute.withName('/'),
          ),
          child: const Text('回到第二页'),
        ),
        MaterialButton(
          onPressed: () =>Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute<void>(
                builder: (BuildContext context) => const MyHomePage(title: '首页',)),
            ModalRoute.withName('/'),
          ),
          child: const Text('回到第二页'),
        )
      ])),
    );
  }
}
