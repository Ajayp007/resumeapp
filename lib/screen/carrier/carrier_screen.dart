import 'package:flutter/material.dart';

class CarrierScreen extends StatefulWidget {
  const CarrierScreen({super.key});

  @override
  State<CarrierScreen> createState() => _CarrierScreenState();
}

class _CarrierScreenState extends State<CarrierScreen> {
  GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController txtcourse = TextEditingController();
  TextEditingController txtexp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Carrier Objective",
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
        backgroundColor: Colors.indigoAccent,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: SingleChildScrollView(
            child: Form(
              key: formkey,
              child: Column(
                children: [
                  Container(
                    height: 300,
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
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
                          textInputAction: TextInputAction.next,
                          maxLines: 6,
                          decoration: const InputDecoration(
                            hintText: ("Description"),
                            border: OutlineInputBorder(),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.black12),
                            hintMaxLines: 8,
                            helperMaxLines: 8,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.bottomCenter,
                    height: 200,
                    padding: const EdgeInsets.all(20),
                    width: MediaQuery.sizeOf(context).width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Current Designation (Experience Candidate)",
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
                            hintText: ("Software Engineer"),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.black12),
                            hintMaxLines: 8,
                            helperMaxLines: 8,
                          ),
                          keyboardType: TextInputType.text,
                        ),
                      ],
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
