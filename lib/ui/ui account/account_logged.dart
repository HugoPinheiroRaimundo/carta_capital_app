import 'dart:ffi';

import 'package:carta_capital_app/components/bars/title_appbar.dart';
import 'package:carta_capital_app/components/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';

class AccountLogged extends StatelessWidget {
  const AccountLogged({super.key});

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
                  const CustomTextButton(
                    page: "",
                    normalText: "MINHA CONTA",
                    isBold: true,
                    isRed: true,
                    fontSize: 15,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  const CustomTextButton(
                    page: "/configPage",
                    normalText: "CONFIGURÇÕES",
                    isBold: true,
                    isRed: true,
                    fontSize: 15,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  const CustomTextButton(
                    page: "",
                    normalText: "FAQ",
                    isBold: true,
                    isRed: true,
                    fontSize: 15,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  SizedBox(
                    height: 330,
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
