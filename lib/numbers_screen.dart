import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class NumbersScreen extends StatelessWidget {
  NumbersScreen({super.key});
  final List<String> englishText = [
    'One',
    'Two',
    'Three',
    'Four',
    'Five',
    'Six',
    'Seven',
    'Eight',
    'Nine',
    'Ten'
  ];
  final List<String> japaneseText = [
    'Ichi',
    'Ni',
    'San',
    'Shi',
    'Go',
    'Roku',
    'Shichi',
    'Hachi',
    'ku',
    'juu',
  ];
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF6DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFF46322B),
        elevation: 15,
        title: const Text(
          'Numbers',
          style: TextStyle(
            fontSize: 23,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(
                      'assets/images/numbers/number${index + 1}.png',
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      height: 130,
                      color: const Color(0xFFEF9235),
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
                              Text(
                                japaneseText[index],
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 22,
                                ),
                              ),
                              Container(
                                color: Colors.white,
                                height: 1.3,
                                width: 100,
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
                                    'sounds/numbers/number_${englishText[index].toLowerCase()}_sound.mp3',
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
