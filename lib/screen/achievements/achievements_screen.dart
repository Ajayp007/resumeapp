import 'package:flutter/material.dart';

class AchievementsScreen extends StatefulWidget {
  const AchievementsScreen({super.key});

  @override
  State<AchievementsScreen> createState() => _AchievementsScreenState();
}

class _AchievementsScreenState extends State<AchievementsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Achievements",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              width: MediaQuery.sizeOf(context).width * 0.90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Enter Achievements",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Exceeded sales 17% average",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 18),
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      suffixIcon: Icon(Icons.delete_forever_outlined, size: 35),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Exceeded sales 17% average",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 18),
                      suffixIcon: Icon(Icons.delete_forever_outlined, size: 35),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 1),
                      hintText: "+",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 45),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
