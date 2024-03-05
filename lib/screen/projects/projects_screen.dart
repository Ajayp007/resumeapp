import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ProjectsScreen extends StatefulWidget {
  const ProjectsScreen({super.key});

  @override
  State<ProjectsScreen> createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController txtttl = TextEditingController();
  TextEditingController txtrls = TextEditingController();
  TextEditingController txttech = TextEditingController();
  TextEditingController txtdes = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Projects",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Expanded(
        child: SingleChildScrollView(
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.all(20),
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Project Title",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Resume Builder App",
                              hintStyle: TextStyle(
                                  color: Colors.black26, fontSize: 20),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10)),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Title Is Required";
                            }
                            return null;
                          },
                          controller: txtttl,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Technologies",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "C Programming",
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "C++",
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        const Row(
                          children: [
                            Icon(
                              Icons.check_box_outline_blank,
                              color: Colors.grey,
                              size: 35,
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Flutter",
                              style: TextStyle(
                                  color: Colors.black12,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Roles",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Organize Team Members,Code analysis",
                            hintStyle:
                                TextStyle(color: Colors.black12, fontSize: 19),
                            hintMaxLines: 2,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Please Enter Your Role";
                            }
                            return null;
                          },
                          controller: txtrls,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Technologies",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "5 - Programmers",
                              hintStyle: TextStyle(
                                  color: Colors.black12, fontSize: 19),
                              hintMaxLines: 6,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10)),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Please Enter The Details";
                            }
                            return null;
                          },
                          controller: txttech,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Project Description",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          textInputAction: TextInputAction.next,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter Your Project Description",
                              hintStyle: TextStyle(
                                  color: Colors.black12, fontSize: 19),
                              hintMaxLines: 6,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 12, horizontal: 10)),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Please Enter Your Project Details";
                            }
                            return null;
                          },
                          controller: txtdes,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if (formkey == formkey.currentState!.validate()) {
                                g1.proTitle = txtttl.text;
                                g1.proRoles = txtrls.text;
                                g1.proTech = txttech.text;
                                g1.proDesc = txtdes.text;
                              }
                            },
                            child: Container(
                              height: 40,
                              width: 100,
                              color: Colors.indigoAccent,
                              child: const Center(
                                child: Text(
                                  "Save",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
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
    );
  }
}
