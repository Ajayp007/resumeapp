import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState(){
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
    ]);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          centerTitle: true,
          title: const Text(
            "Resume Workspace",
            style: TextStyle(
                fontSize: 22,fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: MediaQuery.sizeOf(context).width,
              alignment: Alignment.center,
              color: Colors.indigoAccent,
              child: const Text(
                "Build Options",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    feel(
                        icons: 'contact-books.png',
                        name: 'Contact Info',
                        routes: 'contact'),
                    feel(
                        icons: 'briefcase.png',
                        name: 'Carrier Objective',
                        routes: 'carrier'),
                    feel(
                        icons: 'user.png',
                        name: 'Personal Details',
                        routes: 'details'),
                    feel(
                        icons: 'mortarboard.png',
                        name: 'Education',
                        routes: 'education'),
                    feel(
                        icons: 'thinking.png',
                        name: 'Experiences',
                        routes: 'experiences'),
                    feel(
                        icons: 'experience.png',
                        name: 'Technical Skills',
                        routes: 'technic'),
                    feel(
                        icons: 'open-book.png',
                        name: 'Interest/Hobbies',
                        routes: 'hobby'),
                    feel(
                        icons: 'project.png',
                        name: 'Projects',
                        routes: 'projects'),
                    feel(
                        icons: 'experience.png',
                        name: 'Achievements',
                        routes: 'achievements'),
                    feel(
                        icons: 'handshake.png',
                        name: 'Reference',
                        routes: 'reference'),
                    feel(
                        icons: 'declaration.png',
                        name: 'Declaration',
                        routes: 'declaration'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget feel(
      {required String icons, required String name, required String routes}) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, routes);
          },
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Image.asset(
                  "assets/icons/$icons",
                  width: 40,
                  height: 40,
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  name,
                  style: const TextStyle(
                      fontSize: 20),
                ),
                const Spacer(),
                const Icon(Icons.arrow_forward_ios_outlined)
              ],
            ),
          ),
        ),
        const Divider(),
      ],
    );
  }
}
