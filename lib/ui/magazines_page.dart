import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';

class MagazinePage extends StatefulWidget {
  const MagazinePage({Key? key}) : super(key: key);

  @override
  State<MagazinePage> createState() => _MagazinePageState();
}

class _MagazinePageState extends State<MagazinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      children: [
        Image.asset('assets/image20.png'),
        Image.asset('assets/image20.png'),
        Image.asset('assets/image20.png'),
        Image.asset('assets/image20.png'),
        Image.asset('assets/image20.png'),
        Image.asset('assets/image20.png'),
        Image.asset('assets/image20.png'),
        Image.asset('assets/image20.png'),
      ],
    ));
  }
}
