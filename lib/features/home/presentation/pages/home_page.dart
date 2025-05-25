import 'package:fintech/features/beneficiaries/presentation/pages/beneficiaries_page.dart';
import 'package:fintech/features/settings/presentation/pages/settings_page.dart';
import 'package:fintech/features/top_up/presentation/pages/top_up_history_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController pageController=PageController();
  int currentPage=0;

  void _onItemTapped(final int index) {
    pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.linear);
    setState(() {
      currentPage=index;
    });
  }

  @override
  Widget build(final BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: pageController,
          children: [
            TopUpHistoryPage(),
            BeneficiariesPage(),
            SettingsPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPage,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Top ups'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Benificary'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}