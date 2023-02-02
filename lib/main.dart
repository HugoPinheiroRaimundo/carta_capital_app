import 'package:carta_capital_app/ui/config_page.dart';
import 'package:carta_capital_app/ui/news_page_resume.dart';
import 'package:carta_capital_app/ui/ui%20account/account_logged.dart';
import 'package:carta_capital_app/ui/ui%20account/create_account_page.dart';
import 'package:carta_capital_app/ui/ui%20email/email_confirme_page.dart';
import 'package:carta_capital_app/ui/ui%20email/email_recovery_page.dart';
import 'package:carta_capital_app/ui/ui%20password/password_recovery_page.dart';
import 'package:carta_capital_app/ui/ui%20password/password_reset_page-sucess.dart';
import 'package:carta_capital_app/ui/ui%20password/password_reset_page.dart';
import 'package:carta_capital_app/ui/ui%20payment/Payment_sucess_page.dart';
import 'package:carta_capital_app/ui/home_page.dart';
import 'package:carta_capital_app/ui/magazines_page.dart';
import 'package:carta_capital_app/ui/ui%20account/my_account_page.dart';
import 'package:carta_capital_app/ui/navigation/navigation_bar_ui.dart';
import 'package:carta_capital_app/ui/news_page.dart';
import 'package:carta_capital_app/ui/ui%20payment/payment_revison_page.dart';
import 'package:carta_capital_app/ui/saved_page.dart';
import 'package:flutter/material.dart';

import 'ui/ui payment/payment_page.dart';
import 'ui/profile_page.dart';

void main() {
  runApp(const CartaCapital());
}

class CartaCapital extends StatelessWidget {
  const CartaCapital({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/navigator",
      routes: {
        "/profile": (_) => const ProfilePage(),
        "/home": (_) => const HomePage(),
        "/news": (_) => const NewsPage(),
        "/magazines": (_) => const MagazinePage(),
        "/saved": (_) => const SavedPage(),
        "/PasswordSucess": (_) => const ResetSucess(),
        "/paymentPage": (_) => const PaymentPage(),
        "/navigator": (_) => const NavigationBarUi(),
        "/myAccount": (_) => const MyAccountPage(),
        "/PaymentRevision": (_) => const PaymentRevisionPage(),
        "/PaymentSucess": (_) => const PaymentSucess(),
        "/PasswordReset": (_) => const PasswordReset(),
        "/PasswordRecovery": (_) => const PasswordRecovery(),
        "/emailRecovery": (_) => const EmailRecovery(),
        "/accountLogged": (_) => AccountLogged(),
        "/emailConfirme": (_) => const EmailConfirme(),
        "/createAccount": (_) => const CreateAccount(),
        "/configPage": (_) => const ConfigPage(),
        "/newsResume": (_) => const NewsResume(),
      },
    );
  }
}
