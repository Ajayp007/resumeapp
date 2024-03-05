import 'package:flutter/material.dart';

import '../../utils/global.dart';

class ReferenceScreen extends StatefulWidget {
  const ReferenceScreen({super.key});

  @override
  State<ReferenceScreen> createState() => _ReferenceScreenState();
}

class _ReferenceScreenState extends State<ReferenceScreen> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController txtRefName = TextEditingController();
  TextEditingController txtDesi = TextEditingController();
  TextEditingController txtOrg = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Reference",
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
                            "Reference Name",
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
                              hintText: ("Ajay Purohit"),
                              hintStyle: TextStyle(
                                  color: Colors.black12, fontSize: 20),
                            ),
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return "Please Enter The Name";
                              }
                              return null;
                            },
                            controller: txtRefName,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Designation",
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
                              hintText: ("Flutter Developer"),
                              hintStyle: TextStyle(
                                  color: Colors.black12, fontSize: 20),
                            ),
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return "Please Enter The Designation";
                              }
                              return null;
                            },
                            controller: txtDesi,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "Organization/Institute",
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
                              hintText: ("Red And White Multimedia"),
                              hintStyle: TextStyle(
                                  color: Colors.black12, fontSize: 20),
                            ),
                            validator: (value) {
                              if (value!.isEmpty || value == null) {
                                return "Please Enter The Details";
                              }
                              return null;
                            },
                            controller: txtOrg,
                            textInputAction: TextInputAction.done,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Center(
                            child: InkWell(
                              onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                if (formkey ==
                                    formkey.currentState!.validate()) {
                                  g1.refeName = txtRefName.text;
                                  g1.refeDesi = txtDesi.text;
                                  g1.refeOrg = txtOrg.text;
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
      ),
    );
  }
}
