import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ExperienceScreen extends StatefulWidget {
  const ExperienceScreen({super.key});

  @override
  State<ExperienceScreen> createState() => _ExperienceScreenState();
}

class _ExperienceScreenState extends State<ExperienceScreen> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController txtcomname = TextEditingController();
  TextEditingController txtsch = TextEditingController();
  TextEditingController txtroles = TextEditingController();
  TextEditingController txtdoj = TextEditingController();
  TextEditingController txtdoe = TextEditingController();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Experiences",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Expanded(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(5),
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
                          "Company Name",
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
                            hintText: "New Enterprise, Surat",
                            hintStyle:
                                TextStyle(color: Colors.black12, fontSize: 20),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "BirthDay Date Is Required";
                            }
                            return null;
                          },
                          controller: txtcomname,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "School/College/Institute",
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
                            hintText: "Quality Test Engineer",
                            hintStyle:
                                TextStyle(color: Colors.black12, fontSize: 20),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "BirthDay Date Is Required";
                            }
                            return null;
                          },
                          controller: txtsch,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          "Roles (Optional)",
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
                            hintText:
                                "Working With Team Members To Come Up With New Concepts And Product Analysis...",
                            hintStyle:
                                TextStyle(color: Colors.black12, fontSize: 19),
                            hintMaxLines: 3,
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "BirthDay Date Is Required";
                            }
                            return null;
                          },
                          controller: txtroles,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Employee Status",
                          style: TextStyle(
                              color: Colors.black12,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(height: 10),
                        const SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.blue,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Previously Employed",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.blue),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle_outlined,
                                    color: Colors.grey,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Currently Employed",
                                    style: TextStyle(
                                        fontSize: 13, color: Colors.blue),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(),
                        const SizedBox(height: 10),
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Date Joined",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Date Exit",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Flexible(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  hintStyle:
                                  TextStyle(color: Colors.black12),
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty || value == null) {
                                    return "BirthDay Date Is Required";
                                  }
                                  return null;
                                },
                                controller: txtdoj,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Flexible(
                              child: TextFormField(
                                decoration: const InputDecoration(
                                  hintText: "DD/MM/YYYY",
                                  hintStyle:
                                  TextStyle(color: Colors.black12),
                                  constraints: BoxConstraints(minWidth: 10),
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty || value == null) {
                                    return "BirthDay Date Is Required";
                                  }
                                  return null;
                                },
                                controller: txtdoe,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if (formkey == formkey.currentState!.validate()) {
                                g1.expCompName = txtcomname.text;
                                g1.expCompClg = txtsch.text;
                                g1.expCompRoles = txtroles.text;
                                g1.expCompDoj = txtdoj.text;
                                g1.expCompDoe = txtdoe.text;
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
