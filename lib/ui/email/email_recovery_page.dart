import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../components/bars/title_appbar.dart';
import '../../components/buttons/custom_button.dart';
import '../../components/fields/text_field.dart';

class EmailRecovery extends StatelessWidget {
  const EmailRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.red,
                  onPressed: () {
                    Navigator.of(context).popAndPushNamed("/navigator");
                  },
                ),
                const Text("Voltar")
              ],
            )),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              Text("Recupere seu E-mail",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
              SizedBox(
                height: 10,
              ),
              Text(
                  "Preencha o campo abaixo para iniciaro processo de recuperação de e-mail."),
              SizedBox(
                height: 10,
              ),
              CustomTextField(
                label: "Telefone",
                hintText: "ex:(11) 90000-0000",
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                  height: 50,
                  child: CustomElevatedButton(
                      page: "/emailConfirm", label: "Validar"))
            ],
          ),
        )
      ]),
    );
  }
}
