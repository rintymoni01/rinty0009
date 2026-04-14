import 'package:flutter/material.dart';
import 'pages/home_screen.dart';
import 'pages/storage_screen.dart';
import 'pages/benefits_screen.dart';

void main() => runApp(const SoftwareCompany());

class SoftwareCompany extends StatelessWidget {
  const SoftwareCompany({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(useMaterial3: true).copyWith(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: const SoftwareCompanyPage(),
    );
  }
}

class SoftwareCompanyPage extends StatefulWidget {
  const SoftwareCompanyPage({super.key});

  @override
  State<SoftwareCompanyPage> createState() => _SoftwareCompanyPageState();
}

class _SoftwareCompanyPageState extends State<SoftwareCompanyPage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const StorageScreen(),
    const BenefitsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      drawer: Drawer(
        backgroundColor: const Color(0xFF1C1C1C),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF1E1E1E), Color(0xFF121212)],
                ),
              ),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "SHABKh Software Company",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium_outlined),
              title: const Text("Membership plans"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.settings_outlined),
              title: const Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.help_outlined),
              title: const Text("Help and support"),
              onTap: () {},
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.feedback_outlined),
              title: const Text("Send feedback"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.privacy_tip_outlined),
              title: const Text("Privacy policy"),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.article_outlined),
              title: const Text("Terms of Service"),
              onTap: () {},
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  "Developer by Sakil Hossen",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        centerTitle: true,
        title: const Text(
          "SHABKh Software Pro",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blueAccent),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/sakil.jpg"),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF0F2027), Color(0xFF203A43), Color(0xFF2C5364)],
        ),
        ),
        child: SafeArea(
          child: IndexedStack(
            index: _currentIndex,
            children: _screens,
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.cloud_upload), label: "Storage"),
          BottomNavigationBarItem(icon: Icon(Icons.star_border), label: "Benefits"),
        ],
      ),
    );
  }
}

// perf: optimized state management iteration 4

// fix: optimized ui components iteration 8

// style: optimized state management iteration 12

// chore: optimized ui components iteration 16

// refactor: optimized state management iteration 20

// perf: optimized ui components iteration 24
