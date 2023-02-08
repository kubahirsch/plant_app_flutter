import 'package:flutter/material.dart';

class WeatherBar extends StatelessWidget {
  const WeatherBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 238, 238, 238),
      ),
      child: Row(
        children: [
          const Icon(
            size: 50,
            Icons.sunny,
          ),
          const SizedBox(width: 8),
          SizedBox(
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lidzbark Warminski',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: const [
                        Text(
                          '4 C',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Temperatura',
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          '5 m/s S',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Wiatr',
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'Brak',
                          style: TextStyle(fontSize: 17),
                        ),
                        Text(
                          'Rodzaj opadów',
                          style: TextStyle(fontSize: 8),
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.grey)),
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('więcej'),
            ),
          ),
        ],
      ),
    );
  }
}
