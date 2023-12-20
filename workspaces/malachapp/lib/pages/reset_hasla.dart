import 'package:flutter/material.dart';
import 'package:malachapp/auth/admin/admin.dart';
import 'package:malachapp/auth/auth_service.dart';
import 'package:malachapp/components/text_field.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:malachapp/components/my_button.dart';
import 'package:malachapp/pages/adminPanel.dart';

import 'package:malachapp/components/text.dart';

class ResetHasla extends StatefulWidget {
  const ResetHasla({super.key});

  @override
  State<ResetHasla> createState() => _ResetHaslaState();
}

class _ResetHaslaState extends State<ResetHasla> {
  TextEditingController mail = TextEditingController(text: 'nic waznego');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios_new_rounded)),
                ],
              ),
            ),
            const SizedBox(
              height: 190,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Resetowanie hasła",
                    style: GoogleFonts.roboto(
                      // Ustawienie czcionki Open Sans
                      textStyle: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Aby zresetować hasło wyślij swojego E-maila a natychmiastowo otrzymasz go w skrzynce odbiorczej ;)",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.roboto(
                      // Ustawienie czcionki Open Sans
                      textStyle: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 12, right: 12, top: 12),
                    child: MyTextField(
                        hintText: "E-mail",
                        obscureText: false,
                        controller: mail),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12, right: 12),
                    child: MyButton(
                      myText: MyText(text: "Wyślij", fontSize: 40),
                      onTap: () =>
                          AuthService().resetPassword(email: mail.text),
                    ),
                  ),
                  MyButton(
                      myText: MyText(text: '(ADMIN_PANEL)', fontSize: 40),
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const AdminPanel()))),

                  // jakbys mial ogromny problem to zamiast komponentu uzyj tego ponizej ale bedzie to zle wygladac
                  // Container(
                  //   padding: EdgeInsets.symmetric(horizontal: 12),
                  //   height: 56, // Wysokość textfieldu
                  //   child: ElevatedButton(
                  //     onPressed: () {
                  //       // Dodaj tu akcje po kliknięciu przycisku
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       minimumSize: Size.fromHeight(56),
                  //       backgroundColor: Theme.of(context).colorScheme.secondary,
                  //     ),
                  //     child: Text(
                  //       'Mój Przycisk',
                  //       // style: TextStyle(
                  //       //   color: Theme.of(context).colorScheme.onPrimary,
                  //       // ),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
