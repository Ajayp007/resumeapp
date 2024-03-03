import 'package:flutter/material.dart';

class ContactInfoScreen extends StatefulWidget {
  const ContactInfoScreen({super.key});

  @override
  State<ContactInfoScreen> createState() => _ContactInfoScreenState();
}

class _ContactInfoScreenState extends State<ContactInfoScreen> {
  GlobalKey<FormState> formkey = GlobalKey();
  int index = 0;

  TextEditingController txtname = TextEditingController();
  TextEditingController txtemail = TextEditingController();
  TextEditingController txtphone = TextEditingController();
  TextEditingController txtaddr = TextEditingController();

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
        backgroundColor: Colors.grey.shade200,
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
                          index = 0;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                                    color:
                                        index == 0 ? Colors.amber : Colors.blue,
                                    width: 2))),
                        alignment: Alignment.bottomCenter,
                        child: const Text(
                          "Contact",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          index = 1;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                color: index == 1 ? Colors.amber : Colors.blue,
                                width: 2),
                          ),
                        ),
                        alignment: Alignment.bottomCenter,
                        child: const Text(
                          "Photo",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  width: MediaQuery.sizeOf(context).width * 0.90,
                  child: IndexedStack(
                    index: index,
                    children: [
                      Form(
                        key: formkey,
                        child: Column(
                          children: [
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.person),
                                label: Text("Name"),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Name Is Required";
                                }
                                return null;
                              },
                              controller: txtname,
                              keyboardType: TextInputType.name,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.email),
                                label: Text("Email"),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Email Is Required";
                                } else if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return "Please Enter Valid Email";
                                }
                                return null;
                              },
                              controller: txtemail,
                              keyboardType: TextInputType.emailAddress,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.next,
                              keyboardType: TextInputType.phone,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.phone_android),
                                label: Text("Phone"),
                              ),
                              validator: (value) {
                                if (value!.isEmpty || value == null) {
                                  return "Number Is Required";
                                } else if (value!.length != 10) {
                                  return "Please Enter Valid Number";
                                }
                                return null;
                              },
                              controller: txtphone,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              textInputAction: TextInputAction.done,
                              keyboardType: TextInputType.streetAddress,
                              maxLines: 4,
                              decoration: const InputDecoration(
                                icon: Icon(Icons.location_on),
                                label: Text("Address"),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Address Is Required";
                                }
                                return null;
                              },
                              controller: txtaddr,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: InkWell(
                                onTap: () {
                                  FocusManager.instance.primaryFocus?.unfocus();
                                  if (formkey ==
                                      formkey.currentState!.validate()) {
                                    String name = txtname.text;
                                    String email = txtemail.text;
                                    String phone = txtphone.text;
                                    String add = txtaddr.text;
                                  }
                                },
                                child: Container(
                                  height: 40,
                                  width: 100,
                                  color: Colors.indigoAccent,
                                  child: const Center(
                                    child: Text(
                                      "Save",
                                      style: TextStyle(color: Colors.white,fontSize: 18),
                                    ),),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(20),
                        alignment: Alignment.center,
                        color: Colors.white,
                        width: MediaQuery.sizeOf(context).width * 0.80,
                        child: Stack(
                          alignment: Alignment.bottomRight,
                          children: [
                            const CircleAvatar(radius: 70),
                            Container(
                              height: 30,
                              width: 30,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                color: Colors.white,
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
