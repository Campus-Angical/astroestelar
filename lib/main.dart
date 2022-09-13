import 'package:astroestelar/features/getx/bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        title: const Text(
          "AstroEstelar",
          style: TextStyle(
              fontSize: 28,
              letterSpacing: 3,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background.jpeg"), fit: BoxFit.cover),
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
            const SizedBox(height: 50),
            Column(
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
            const SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: [
                          const Text(
                              "Objetos deixados \n na lua \n pelo homem"),
                          Image.asset("images/astronaut.png",
                              width: 80, height: 80)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: [
                          const Text("Primeiro \n sátelite \n feito"),
                          Image.asset("images/satelite.png",
                              width: 80, height: 80)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: [
                          const Text("Composição de \n de um buraco \n negro"),
                          Image.asset("images/black_hole.png",
                              width: 80, height: 80)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: [
                          const Text("Planeta Terra"),
                          Image.asset("images/earth.jpg",
                              width: 80, height: 80),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: [
                          const Text("Planeta Marte"),
                          Image.asset("images/marte.png", width: 80, height: 80)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 200,
                    child: Card(
                      child: Row(
                        children: [
                          const Text("Planeta Saturno"),
                          Image.asset("images/saturn.png",
                              width: 80, height: 80),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.rocket), label: "Rocket"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notification"),
        ],
      ),
    );
  }
}