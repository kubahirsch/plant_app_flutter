import 'package:flutter/material.dart';
import 'package:zielonepogotowie/widgets/inside%20general%20container%20and%20my%20garden/custom_navigation_tab.dart';

class SocialPage extends StatefulWidget {
  const SocialPage({super.key});

  @override
  State<SocialPage> createState() => _SocialPageState();
}

class _SocialPageState extends State<SocialPage> {
  List tabs = [
    ['Wszystkie', true],
    ['Rekomendowane dla Ciebie', false],
  ];

  changeTab(index) {
    setState(() {
      for (int i = 0; i < tabs.length; i++) {
        tabs[i][1] = false;
      }
      tabs[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 120,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: ((context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color.fromARGB(255, 31, 30, 30),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add,
                            size: 40,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      const Text(
                        'Twoja chwila',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                );
              }
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      foregroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZmlsZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      'Marek',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              );
            }),
          ),
        ),
        SizedBox(
          height: 40,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: ((context, index) {
              return CustomNavigationTab(
                text: tabs[index][0],
                onTap: () {
                  changeTab(index);
                },
                isActive: tabs[index][1],
              );
            }),
          ),
        ),
      ],
    );
  }
}
