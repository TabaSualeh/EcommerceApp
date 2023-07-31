import 'package:ecommerce_app/constants/colors.dart';
import 'package:ecommerce_app/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        useMaterial3: true,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        buttonColor: redIconwithButton,
        scaffoldBackgroundColor: greyScaffoldbf,
        appBarTheme: AppBarTheme(
            color: Colors.transparent,
            titleTextStyle:
                GoogleFonts.metrophobic(fontSize: 18, color: white6)),
        iconTheme: IconThemeData(color: white6, size: 10),
        textTheme: TextTheme(
            displayLarge: GoogleFonts.metrophobic(
                fontSize: 34, color: white6, fontWeight: FontWeight.w900),
            bodySmall: GoogleFonts.metrophobic(fontSize: 14, color: white5)),
        inputDecorationTheme: InputDecorationTheme(
          suffixIconColor: greyHintText,

          fillColor: greyLightTextField,
          filled: true,

          labelStyle:
              GoogleFonts.metrophobic(fontSize: 13, color: greyLabelText),
          // hintStyle: const TextTheme().labelSmall,
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(6.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: UnderlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              borderSide: BorderSide(color: greyLightTextField, width: 0.5)),
          enabledBorder: UnderlineInputBorder(
              borderRadius: const BorderRadius.all(Radius.circular(4)),
              borderSide:
                  BorderSide(color: greyLightTextField.withOpacity(0.50))),
        ),
      ),
      home: SignUp(),
    );
  }
}
