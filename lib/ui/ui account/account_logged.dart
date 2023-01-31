import 'dart:ffi';

import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:flutter/material.dart';

class AccountLogged extends StatelessWidget {
  AccountLogged({super.key});

  final _myList = ["MINHA CONTA", "CONFIGURAÇÕES", "FAQ"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TitleAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: const [
                Icon(
                  Icons.person_pin_rounded,
                  size: 50,
                ),
                Text("OLÁ, MARIA"),
                SizedBox(
                  width: 120,
                ),
                Text("SAIR DA CONTA")
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text("MINHA CONTA",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text("CONFIGURAÇÕES",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text("FAQ",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.red)),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 420,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.abc,
                        size: 30,
                      ),
                      Icon(
                        Icons.baby_changing_station,
                        size: 30,
                      ),
                      Icon(
                        Icons.cabin,
                        size: 30,
                      ),
                      Icon(
                        Icons.dangerous_outlined,
                        size: 30,
                      ),
                      Icon(
                        Icons.e_mobiledata,
                        size: 30,
                      ),
                    ],
                  ),
                  const Center(
                      child: Text("NOS ACOMPANHE",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold)))
                ],
              ),
            )
            /*
            Expanded(
                child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return Text(_myList[index]);
              },
              itemCount: _myList.length,
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  color: Theme.of(context).primaryColor,
                );
              },
            ))
            */
          ],
        ),
      ),
    );
  }
}
