import 'package:flutter/material.dart';
import '../../utils/global.dart';

class PersonalInfoScreen extends StatefulWidget {
  const PersonalInfoScreen({super.key});

  @override
  State<PersonalInfoScreen> createState() => _PersonalInfoScreenState();
}

class _PersonalInfoScreenState extends State<PersonalInfoScreen> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController txtdob = TextEditingController();
  TextEditingController txtsta = TextEditingController();
  TextEditingController txtlang = TextEditingController();
  TextEditingController txtnati = TextEditingController();

  String status = "Single";

  bool isEnglish = false;
  bool isHindi = false;
  bool isGujarati = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Personal Details",
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
                  padding: const EdgeInsets.all(20),
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
                          "DOB",
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
                            hintText: "DD/MM/YYYY",
                            hintStyle:
                                TextStyle(color: Colors.black12, fontSize: 20),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "BirthDay Date Is Required";
                            }
                            return null;
                          },
                          controller: txtdob,
                          keyboardType: TextInputType.name,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          "Marital Status",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        RadioListTile(
                          value: "Single",
                          groupValue: status,
                          onChanged: (value) {
                            setState(() {
                              status = value!;
                              g1.status = value;
                            });
                          },
                          title: Text(
                            "Single",
                            style: status == "Single"
                                ? const TextStyle(color: Colors.blue)
                                : const TextStyle(color: Colors.black),
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                        RadioListTile(
                          value: "Married",
                          groupValue: status,
                          onChanged: (value) {
                            setState(() {
                              status = value!;
                              g1.status = value;
                            });
                          },
                          title: Text(
                            "Married",
                            style: status == "Married"
                                ? const TextStyle(color: Colors.blue)
                                : const TextStyle(color: Colors.black),
                          ),
                          contentPadding: EdgeInsets.zero,
                        ),
                        const SizedBox(height: 10),
                        const Text(
                          "Languages Known",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        CheckboxListTile(
                            value: isEnglish,
                            onChanged: (value) {
                              setState(() {
                                isEnglish = value!;
                                g1.isEnglish = value;
                              });
                            },
                            title: const Text("English"),
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.zero),
                        CheckboxListTile(
                            value: isHindi,
                            onChanged: (value) {
                              setState(() {
                                isHindi = value!;
                                g1.isHindi = value;
                              });
                            },
                            title: const Text("Hindi"),
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.zero),
                        CheckboxListTile(
                            value: isGujarati,
                            onChanged: (value) {
                              setState(() {
                                isGujarati = value!;
                                g1.isGujarati = value;
                              });
                            },
                            title: const Text("Gujarati"),
                            controlAffinity: ListTileControlAffinity.leading,
                            contentPadding: EdgeInsets.zero),
                        const SizedBox(height: 10),
                        const Text(
                          "Nationality",
                          style: TextStyle(
                              color: Colors.indigoAccent,
                              fontWeight: FontWeight.bold,
                              fontSize: 22),
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: "Indian",
                            hintStyle:
                                TextStyle(color: Colors.black12, fontSize: 20),
                          ),
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return "Please Enter The Details";
                            }
                            return null;
                          },
                          controller: txtnati,
                          keyboardType: TextInputType.text,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: InkWell(
                            onTap: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              if (formkey == formkey.currentState!.validate()) {
                                g1.personalDob = txtdob.text;
                                g1.personalNation = txtsta.text;
                                g1.status = txtsta.text;
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
