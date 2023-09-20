import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  get hight => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 220, 220, 206),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PhysicalModel(
                color: Colors.grey.withOpacity(0.8),
                shape: BoxShape.circle,
                elevation: 10.0,
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/images/cat.png"),
                )),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xFFE2463F),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 156, 150, 150),
                      blurRadius: 4,
                      offset: Offset(4, 4),
                    )
                  ]),
              child: const Center(
                child: DetailsRow(
                  text: "Tala Almulla",
                  icon: Icon(Icons.person),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xFFE2463F),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 156, 150, 150),
                      blurRadius: 4,
                      offset: Offset(4, 4),
                    )
                  ]),
              child: const Center(
                child: DetailsRow(
                  text: "Talaalmulla@gmail.com",
                  icon: Icon(Icons.email),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: const Color(0xFFE2463F),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 156, 150, 150),
                      blurRadius: 4,
                      offset: Offset(4, 4),
                    )
                  ]),
              child: const Center(
                child: DetailsRow(
                  text: "0508417746",
                  icon: Icon(Icons.phone),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}

class DetailsRow extends StatelessWidget {
  const DetailsRow({
    super.key,
    required this.icon,
    required this.text,
  });
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        icon,
        Text(
          text,
          style: GoogleFonts.ralewayDots(
            textStyle: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(),
      ],
    );
  }
}
