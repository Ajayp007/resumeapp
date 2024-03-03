import 'package:flutter/material.dart';

class TechnicalScreen extends StatefulWidget {
  const TechnicalScreen({super.key});

  @override
  State<TechnicalScreen> createState() => _TechnicalScreenState();
}

class _TechnicalScreenState extends State<TechnicalScreen> {
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
      ),
      backgroundColor: Colors.grey.shade200,
      body: Expanded(
        child: Column(
          children: [
            Container(

              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(20),
              width: MediaQuery.sizeOf(context).width * 0.90,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enter Your Skills",
                        style: TextStyle(
                            color: Colors.black45,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "C Programming, Web Technical",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 18),
                      contentPadding: EdgeInsets.symmetric(vertical: 20.0),
                      suffixIcon: Icon(Icons.delete_forever_outlined),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "C Programming, Web Technical",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 18),
                      suffixIcon: Icon(Icons.delete_forever_outlined),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    textAlign: TextAlign.center,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(vertical: 1),
                      hintText: "+",
                      hintStyle: TextStyle(color: Colors.black45, fontSize: 45),

                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: () {
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
          ],
        ),
      ),
    );
  }
}
