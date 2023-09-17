import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});
  final player = AudioPlayer();
  final List<String> englishText = [
    'Are you coming?',
    'Don\'t forget to subscribe',
    'How are you feeling?',
    'I love programming',
    'I love anime',
    'Programming is easy',
    'What is your name?',
    'Where are you going?',
    'Yes I\'m coming'
  ];
  final List<String> japaneseText = [
    'Kimasu ka?',
    'Kōdoku suru koto o wasurenaide kudasai',
    'Go kibun wa ikagadesu ka?',
    'Puroguramingu ga daisukidesu',
    'Watashi wa anime ga daisukidesu',
    'Puroguramingu wa kantandesu',
    'Anata no namae wa nanidesu ka?',
    'Doko ni iku no?',
    'Hai, ikimasu',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        elevation: 15,
        title: const Text(
          'Phrases',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: englishText.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 130,
                      color: const Color(0xFF19A8BE),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 250,
                                child: Text(
                                  japaneseText[index],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 22,
                                  ),
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                height: 1.3,
                                width: 250,
                              ),
                              Text(
                                englishText[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: IconButton(
                              onPressed: () {
                                player.play(
                                  AssetSource(
                                    'sounds/phrases/${englishText[index].toLowerCase().replaceAll(' ', '_').replaceAll('?', '').replaceAll("'", '')}.wav',
                                  ),
                                );
                              },
                              icon: const Icon(
                                Icons.play_arrow,
                                color: Colors.white,
                                size: 40,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0xFFFBE1B8),
                thickness: 1,
                height: 0,
              ),
            ],
          );
        },
      ),
    );
  }
}
