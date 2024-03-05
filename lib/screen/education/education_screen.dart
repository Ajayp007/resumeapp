import 'package:flutter/material.dart';

import '../../utils/global.dart';

class EducationScreen extends StatefulWidget {
  const EducationScreen({super.key});

  @override
  State<EducationScreen> createState() => _EducationScreenState();
}

class _EducationScreenState extends State<EducationScreen> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController txtcorse = TextEditingController();
  TextEditingController txtsch = TextEditingController();
  TextEditingController txtpr = TextEditingController();
  TextEditingController txtyear = TextEditingController();

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
        backgroundColor: Colors.grey.shade200,
        body: Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Course/degree",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("B. Tech Information Technology"),
                                hintStyle: TextStyle(
                                    color: Colors.black12, fontSize: 20),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Please Enter The Details";
                                }
                                return null;
                              },
                              controller: txtcorse,
                              keyboardType: TextInputType.text,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "School/College/Institute",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("Bhagwan Mahavir University"),
                                hintStyle: TextStyle(
                                    color: Colors.black12, fontSize: 20),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Please Enter The Details";
                                }
                                return null;
                              },
                              controller: txtsch,
                              keyboardType: TextInputType.text,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "School/College/Institute",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("70 % (or) 7.0 CGPA"),
                                hintStyle: TextStyle(
                                    color: Colors.black12, fontSize: 20),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Please Enter The Details";
                                }
                                return null;
                              },
                              controller: txtpr,
                              keyboardType: TextInputType.text,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text(
                              "Year of Pass",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: ("2019"),
                                hintStyle: TextStyle(
                                    color: Colors.black12, fontSize: 20),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Please Enter The Details";
                                }
                                return null;
                              },
                              controller: txtyear,
                              keyboardType: TextInputType.text,
                            ),
                            const SizedBox(height: 20),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if (formkey.currentState!.validate()) {
                                    g1.eduCourse = txtcorse.text;
                                    g1.eduClg = txtsch.text;
                                    g1.eduPr = txtpr.text;
                                    g1.eduYear = txtyear.text;
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("Data Save"),
                                        backgroundColor: Colors.indigoAccent,
                                        behavior: SnackBarBehavior.floating,
                                        duration: Duration(seconds: 3),
                                      ),
                                    );
                                  }
                                },
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  color: Colors.indigoAccent,
                                  alignment: Alignment.center,
                                  child: const Text(
                                    "Save",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
