import 'package:flutter/material.dart';
import '../components/buttons/custom_button.dart';
import '../components/buttons/custom_checkbox.dart';
import '../components/fields/text_field.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.red,
                ),
                Text("Voltar")
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
                const Text("Entre na sua conta",
                    style: TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 15),
                const Text("Ainda não tem cadastro no cartaCapital?"),

                // TALVEZ FAZER UM COMPONENTE DISSO
                const Text(
                  "Assine agora!",
                  style: TextStyle(
                      decoration: TextDecoration.underline, color: Colors.red),
                ),
                const SizedBox(height: 20),
                const CustomTextField(
                    label: "E-Mail", hintText: "ex. nome@email.com.br"),
                const SizedBox(
                  height: 10,
                ),
                const CustomTextField(label: "Senha"),
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
                Row(
                  children: const [
                    SizedBox(width: 40),

                    // Botão text 1
                    Text("Esqueci minha senha",
                        style: TextStyle(
                          fontSize: 12,
                          decoration: TextDecoration.underline,
                        )),
                    SizedBox(width: 40),

                    // Botão text 2
                    Text(
                      "Esqueci meu E-mail",
                      style: TextStyle(
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 15),
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
                            style: TextStyle(fontSize: 8, color: Colors.black)),
                        style: ElevatedButton.styleFrom(primary: Colors.white),
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
                            style: TextStyle(fontSize: 8, color: Colors.black)),
                        style: ElevatedButton.styleFrom(primary: Colors.white),
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
