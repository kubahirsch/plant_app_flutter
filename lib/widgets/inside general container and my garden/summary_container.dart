import 'package:flutter/material.dart';

class SummaryContainer extends StatelessWidget {
  const SummaryContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(
              size: 60,
              Icons.emoji_events,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Masz jeszcze do wykonania - 27 Zadań'),
                SizedBox(height: 10),
                Text('Wykonałeś - 0 Zadań'),
              ],
            )
          ],
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            minimumSize: const Size.fromHeight(33),
            backgroundColor: Colors.grey,
          ),
          onPressed: () {},
          child: const Text('Plan Upraw'),
        )
      ],
    );
  }
}
