import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/cards/custom_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/default.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Center(
              child: Text(
                "NOTIFICAÇÕES",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            CustomCard(
              title: "Sua assinatura vencerá em breve.",
              radioOn: true,
              page: "/newsResume",
              defaultText: DefaultConfig.defaultTextCard,
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard(
              title: "Chegou uma nova edição quentinha.",
              radioOn: true,
              page: '',
              defaultText: DefaultConfig.defaultTextCard,
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard(
              title: "Essa matéria foi feita pra você.",
              radioOn: true,
              page: '',
              defaultText: DefaultConfig.defaultTextCard,
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard(
              title: "Sua assinatura vencerá em breve.",
              radioOn: false,
              page: '',
              defaultText: DefaultConfig.defaultTextCard,
            ),
            SizedBox(
              height: 10,
            ),
            CustomCard(
              title: "Sua assinatura vencerá em breve",
              radioOn: false,
              page: '',
              defaultText: DefaultConfig.defaultTextCard,
            ),
          ],
        ),
      ),
    );
  }
}
