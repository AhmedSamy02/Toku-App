import 'package:flutter/material.dart';
import 'package:toku/colors_screen.dart';
import 'package:toku/family_screen.dart';
import 'package:toku/numbers_screen.dart';
import 'package:toku/phrases_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        elevation: 15,
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NumbersScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  color: const Color(0xFFFF9800),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 0, 25),
                    child: Text(
                      'Numbers',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FamilyScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  color: const Color(0xFF4CAF50),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 0, 25),
                    child: Text(
                      'Family Members',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ColorsScreen(),
                    ),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  color: const Color(0xFF7C4DFF),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 0, 25),
                    child: Text(
                      'Colors',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PhrasesScreen(),),
                  );
                },
                child: Container(
                  width: double.maxFinite,
                  color: const Color(0xFF2196F3),
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(15, 25, 0, 25),
                    child: Text(
                      'Phrases',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.maxFinite,
                child: Image.asset(
                  'assets/images/home_image.png',
                  fit: BoxFit.cover,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
