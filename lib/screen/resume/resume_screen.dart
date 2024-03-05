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
          "Resume Workspace",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("${g1.contactName}"),
            Text("${g1.contactEmail}"),
            Text("${g1.contactPhone}"),
            Text("${g1.contactAdd}"),
            Text("${g1.carrierCourse}"),
            Text("${g1.carrierExp}"),
            Text("${g1.personalDob}"),
            Text("${g1.personalNation}"),
            Text("${g1.eduCourse}"),
            Text("${g1.eduClg}"),
            Text("${g1.eduPr}"),
            Text("${g1.eduYear}"),
            Text("${g1.expCompName}"),
            Text("${g1.expCompClg}"),
            Text("${g1.expCompRoles}"),
            Text("${g1.expCompDoj}"),
            Text("${g1.expCompDoe}"),
            Text("${g1.techSkill}"),
            Text("${g1.techSkills}"),
            Text("${g1.proTitle}"),
            Text("${g1.proTech}"),
            Text("${g1.proRoles}"),
            Text("${g1.proDesc}"),
            Text("${g1.achiAve}"),
            Text("${g1.achiAve2}"),
            Text("${g1.refeName}"),
            Text("${g1.refeDesi}"),
            Text("${g1.refeOrg}"),
            Text("${g1.declDesc}"),
            Text("${g1.declDate}"),
            Text("${g1.declPlace}"),
            Image.file(
              File("${g1.profileImage}"),
            ),
          ],
        ),
      ),
    );
  }
}
