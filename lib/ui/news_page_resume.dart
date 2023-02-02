import 'package:carta_capital_app/components/bars/bottom_nav_bar.dart';
import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/cards/custom_card.dart';
import 'package:flutter/material.dart';

import '../utils/default.dart';

class NewsResume extends StatelessWidget {
  const NewsResume({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: Column(children: [
        Padding(
            padding: EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                Text("Voltar")
              ],
            )),
        const CustomCard(
          title: "Sua Assinatura Vencerá em breve",
          radioOn: false,
          page: "",
          defaultText:
              """"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.

Scelerisque eleifend donec pretium lputate sapien nec sagittis aliquam. Pharetra et ultrices neque ornare aenean esmod. Eget nunc scelerisque viverra mauris in. Feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Vitae turpis massa sed elementum tempus. """,
        )
      ]),
    );
  }
}
