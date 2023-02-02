import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String title;
  final bool radioOn;
  final String page;
  final String? defaultText;

  const CustomCard(
      {super.key,
      required this.title,
      required this.radioOn,
      required this.page,
      required this.defaultText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Card(
          color: Colors.grey.shade100,
          shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black, width: 1),
              borderRadius: BorderRadius.circular(5.0)),
          child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.of(context).pushNamed(page);
              },
              trailing: radioOn
                  ? const Icon(
                      Icons.radio_button_checked,
                      color: Colors.red,
                    )
                  : const Icon(
                      Icons.radio_button_checked,
                    ),
              title: Padding(
                padding: const EdgeInsets.only(top: 15, bottom: 10),
                child: Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ),
              subtitle: Expanded(
                child: Text(
                  defaultText!,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 13),
                ),
              ),
            ),
          ])),
    );
  }
}
