import 'dart:io';

import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ResumeScreen extends StatefulWidget {
  const ResumeScreen({super.key});

  @override
  State<ResumeScreen> createState() => _ResumeScreenState();
}

class _ResumeScreenState extends State<ResumeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Resume",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name :- ${g1.contactName}",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "E-mail :- ${g1.contactEmail}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "Mobile :- ${g1.contactPhone}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        "Address :- ${g1.contactAdd}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ],
                  ),
                  Image.file(
                    File("${g1.profileImage}"),
                    height: 100,
                    width: 100,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 10,
                color: Colors.black,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Carrier Objectiv",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid),
              ),
               const SizedBox(height: 10),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(
                     "Course :- ${g1.carrierCourse}",
                     style: const TextStyle(
                         fontSize: 16),
                   ),
                   Text(
                     "Work Experience :- ${g1.carrierExp}",
                     style: const TextStyle(
                         fontSize: 16),
                   ),
                 ],
               ),
              const SizedBox(height: 10),
              const Divider(
                height: 10,
                color: Colors.black,
                thickness: 2,
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Personal Details",
                style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                    decorationStyle: TextDecorationStyle.solid),
              ),
              const SizedBox(height: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Date Of Birth :- ${g1.personalDob}",
                    style: const TextStyle(
                        fontSize: 16,),
                  ),
                  Text(
                    "Marital Status :- ${g1.status}",
                    style: const TextStyle(
                        fontSize: 16,),
                  ),
                  Text(
                    "Languages Known :- ${g1.personalDob}",
                    style: const TextStyle(
                        fontSize: 16,),
                  ),
                  Text(
                    "Nationality :- ${g1.personalNation}",
                    style: const TextStyle(
                        fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
