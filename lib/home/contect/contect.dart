import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  bool isContact = true;
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigoAccent,
          title: const Text(
            "Resume Workspace",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.grey,
        body: Column(
          children: [
            Container(
              color: Colors.indigoAccent,
              width: MediaQuery.sizeOf(context).width,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isContact = true;
                          index = 0;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: isContact
                                          ? Colors.amber
                                          : Colors.blue,
                                      width: 2))),
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            "Contact",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isContact = false;
                          index = 1;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  color: isContact == false
                                      ? Colors.amber
                                      : Colors.blue,
                                  width: 2),
                            ),
                          ),
                          alignment: Alignment.bottomCenter,
                          child: const Text(
                            "Photo",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  color: Colors.grey,
                  width: MediaQuery.sizeOf(context).width,
                  child: IndexedStack(
                    index: index,
                    children: [
                      const Column(
                        children: [
                          TextField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              icon: Icon(Icons.person),
                              label: Text("Name"),
                            ),
                            keyboardType: TextInputType.name,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              label: Text("Email"),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              icon: Icon(Icons.phone_android),
                              label: Text("Phone"),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            textInputAction: TextInputAction.done,
                            keyboardType: TextInputType.streetAddress,
                            maxLines: 4,
                            decoration: InputDecoration(
                              icon: Icon(Icons.email),
                              label: Text("Address"),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                          alignment: Alignment.center,
                          color: Colors.white,
                          height: 200,
                          width: MediaQuery.sizeOf(context).width * 0.90,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              const CircleAvatar(radius: 70),
                              Container(
                                height: 30,
                                width: 30,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  color: Colors.black,
                                  shape: BoxShape.circle,
                                ),
                                child: const Icon(
                                  Icons.add,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
