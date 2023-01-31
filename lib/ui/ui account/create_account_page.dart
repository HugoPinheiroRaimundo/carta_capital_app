import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';
import '../../components/bars/bottom_nav_bar.dart';
import '../../components/buttons/custom_button.dart';
import '../../components/buttons/custom_checkbox.dart';
import '../../components/buttons/custom_text_button.dart';
import '../../components/fields/password_text_field.dart';
import '../../components/fields/text_field.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const TitleAppBar(),
        bottomNavigationBar: const CustomBottomNavBar(),
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    IconButton(
                      icon: const Icon(Icons.arrow_back_ios),
                      color: Colors.red,
                      onPressed: () {},
                    ),
                    const Text("Voltar")
                  ],
                )),
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text("Crie a sua conta",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    const Text("Ainda não tem cadastro no cartaCapital?"),

                    // TALVEZ FAZER UM COMPONENTE DISSO
                    const Text(
                      "Entre agora!",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.red),
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(label: "Nome Completo"),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextField(label: "E-mail"),
                    const SizedBox(
                      height: 10,
                    ),
                    const CustomTextField(label: "Celular"),
                    const SizedBox(
                      height: 10,
                    ),
                    const PasswordTextField(label: "Senha"),
                    const SizedBox(
                      height: 10,
                    ),
                    const PasswordTextField(label: "Confirmar Senha"),

                    Row(
                      children: const [
                        CustomCheckBox(
                            normalText: "Concordo com os ",
                            underlinedText: "termos e condições"),
                      ],
                    ),
                    Row(
                      children: const [
                        CustomCheckBox(
                            normalText: "Aceito a ",
                            underlinedText: "Política de Privacidade"),
                      ],
                    ),
                    const SizedBox(height: 15),
                    const CustomElevatedButton(
                      label: 'Entrar',
                      page: '/myAccount',
                    ),
                    const SizedBox(height: 15),

                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        "OU",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 10),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context)
                                  .restorablePushReplacementNamed('/');
                            },
                            icon: const Icon(
                              Icons.android,
                              color: Colors.black,
                            ),
                            label: const Text("Fazer Login com o goole",
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black)),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 40),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton.icon(
                            onPressed: () {
                              Navigator.of(context)
                                  .restorablePushReplacementNamed('/');
                            },
                            icon: const Icon(
                              Icons.apple,
                              color: Colors.black,
                            ),
                            label: const Text("Fazer Login com apple",
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black)),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            )))
          ],
        ));
  }
}
