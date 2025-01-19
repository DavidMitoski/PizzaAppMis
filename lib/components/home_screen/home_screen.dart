import 'package:flutter/material.dart';
import 'package:newfigmapizza/food_delivery/lib/screens/home_screen2.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: const Color.fromRGBO(209, 85, 85, 1),
          constraints: const BoxConstraints(maxWidth: 480),
          width: double.infinity,
          child: Stack(
            children: [
              Column(
                children: [
                  const SizedBox(height: 50), // Додаден простор од горе

                  // Header - лого слика
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                    child: Center(
                      child: Image.asset(
                        'assets/images/logoo.png', // Локална слика
                        width: 100,
                        height: 100,
                      ),
                    ),
                  ),

                  // Слика на моторот која покрива цел екран
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height - 180, // Спуштена содржина
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/images/motor.png', // Локална слика
                          fit: BoxFit.cover, // Слика која го покрива цел екран
                          semanticLabel: 'Motor image',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 45),
                ],
              ),

              // Стрелка поставена над логото
              Positioned(
                top: 40.0, // Поставена малку подолу
                right: 20.0, // Десниот агол
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Бела позадина
                    border: Border.all(
                      color: Colors.black, // Црн бордер
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(8.0), // Малку заоблени агли
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.black, // Боја на иконата
                    ),
                    onPressed: () {
                      // Навигација до HomeScreen2
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen2(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
