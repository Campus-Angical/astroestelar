import 'package:astroestelar/features/getx/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(GetMaterialApp(
    initialBinding: DependenciesBinding(),
    home: const HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        title: const Text("AstroEstelar",
            style: TextStyle(
                fontSize: 28,
                letterSpacing: 3,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: Icon(Icons.verified_user, color: Colors.white),
              trailing: Text("AstroEstelar",
                  style: TextStyle(
                      fontSize: 26,
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
            ),
            const SizedBox(height: 40),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: SizedBox(
                      width: 500.00,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide.none),
                          hintText: "Pesquisar por planetas...",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: const [Text("Objetos deixados \n na lua \n pelo homem")],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: const [Text("Primeiro \n sátelite \n feito"), Icon(Icons.abc)],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: const [Text("Composição de \n de um boraco \n negro"), Icon(Icons.abc)],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
