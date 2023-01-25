import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';

import '../components/bars/bottom_nav_bar.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({super.key});

  @override
  State<MyAccountPage> createState() => _MyAccountPage();
}

class _MyAccountPage extends State<MyAccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TitleAppBar(),
      bottomNavigationBar: CustomBottomNavBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Minha Conta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 15),
              const Text("Veja seu perfil"),
              const SizedBox(height: 20),
              const Text("Nome", style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Maria da Silva Santos'),
              ),
              const SizedBox(height: 20),
              const Text("E-mail",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'mariadasilva@gmail.com'),
              ),
              const SizedBox(height: 20),
              const Text("Gênero",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Feminino'),
              ),
              const SizedBox(height: 20),
              const Text("Nascimento",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '06/02/1977'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red[900]),
                    onPressed: () {
                      Navigator.of(context).restorablePushReplacementNamed('/');
                    },
                    child: const Text("Alterar Minha Senha")),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Seu Plano",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("O seu plano atual é o básico por 1 ano:"),
              const SizedBox(height: 5),
              const Text("* Acesso limitado ao conteúdo digital"),
              const SizedBox(height: 5),
              const Text("* Acesso as newsletters exclusivas para assinates"),
              const SizedBox(height: 5),
              const Text("* O seu plano vence dia 25/08/2022"),
              const SizedBox(height: 5),
              const Text("* Forma de pagamento: Cartão de crédito"),
              const SizedBox(height: 10),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: const Text("Alterar meu plano")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {
                      Navigator.of(context)
                          .restorablePushReplacementNamed('/paymentPage');
                    },
                    child: const Text("Alterar forma de pagamento")),
              ),
            ]),
      ),
    );
  }
}


// 192 linhas antes do refactore 