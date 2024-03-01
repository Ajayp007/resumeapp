import 'package:flutter/material.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: const Text(
            "Education",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Course/degree",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("B. Tech Information Technology")),
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "School/College/Institue",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Bhagwan Mahavir University")),
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "School/College/Institue",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("70 % (or) 7.0 CGPA")),
                            keyboardType: TextInputType.text,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Year of Pass",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("2019")),
                            keyboardType: TextInputType.text,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
