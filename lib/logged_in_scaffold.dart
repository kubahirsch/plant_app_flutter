import 'package:flutter/material.dart';
import 'package:zielonepogotowie/pages/home_page.dart';
import 'package:zielonepogotowie/pages/knowlage_page.dart';
import 'package:zielonepogotowie/pages/social_page.dart';
import 'package:zielonepogotowie/widgets/custom_appbar.dart';

class LoggedInScaffold extends StatefulWidget {
  const LoggedInScaffold({super.key});

  @override
  State<LoggedInScaffold> createState() => _LoggedInScaffoldState();
}

class _LoggedInScaffoldState extends State<LoggedInScaffold> {
  int _page = 0;

  List<Widget> pages = const [
    HomeScreen(),
    KnowladgePage(),
    SocialPage(),
    Text('Diagnozuj'),
    Text('Bazarek'),
  ];

  onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(50, 90),
        child: CustomAppBar(),
      ),
      body: SingleChildScrollView(child: pages[_page]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 45, 129, 48),
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 50,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromARGB(255, 77, 77, 77),
        selectedItemColor: const Color.fromARGB(255, 77, 77, 77),
        unselectedFontSize: 12,
        selectedFontSize: 12,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        currentIndex: _page,
        onTap: onPageChanged,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.local_florist,
              size: 35,
            ),
            label: 'Mój ogród',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              size: 35,
            ),
            label: 'Wiedza',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.people,
              size: 35,
            ),
            label: 'Społeczność',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.content_paste_search,
              size: 35,
            ),
            label: 'Diagnozuj',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.storefront,
              size: 35,
            ),
            label: 'Bazarek',
          ),
        ],
      ),
    );
  }
}
