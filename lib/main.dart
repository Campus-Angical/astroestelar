import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MaterialApp(
    home: HomePage()
  ));
}
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final StyleFont = GoogleFonts.aclonica(
    fontSize: 25,
    color: Colors.blue,
    fontWeight: FontWeight.bold
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(child: Image.asset("images/fundo1.jpg")),
        Column(
        children: [
          ListTile(
            leading: Icon(Icons.verified_user_outlined),
            trailing: Text("AstroEstelar", style: StyleFont),
          ),
        ],
      )
      ]),
    );
  }
}