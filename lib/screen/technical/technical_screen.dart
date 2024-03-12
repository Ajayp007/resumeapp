import 'package:flutter/material.dart';

import '../../utils/global.dart';

class TechnicalScreen extends StatefulWidget {
  const TechnicalScreen({super.key});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen> {
  List<TextEditingController> l1 = [TextEditingController()];
  List<String> l2 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Technical Skills",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              for (int i = 0; i <= l1.length; i++) {
                l2.add(l1[i].toString());
              }
              g1.technical=l2;
            },
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      backgroundColor: Colors.grey.shade200,
      body: Expanded(
        child: Container(
          margin: const EdgeInsets.all(20),
          padding: const EdgeInsets.all(20),
          width: MediaQuery.sizeOf(context).width * 0.90,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              const Text("Enter Your Skill"),
              const SizedBox(
                height: 20,
              ),
              Column(
                  children: List.generate(
                l1.length,
                (index) => Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          hintText: "C Programming",
                          hintStyle:
                              TextStyle(color: Colors.black45, fontSize: 18),
                        ),
                        controller: l1[index],
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          l1.removeAt(index);
                        });
                      },
                      icon: const Icon(
                        Icons.delete_outlined,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              )),
              const SizedBox(height: 20),
              Container(
                height: 50,
                width: MediaQuery.sizeOf(context).width * 0.80,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      l1.add(TextEditingController());
                    });
                  },
                  icon: const Icon(Icons.add),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
