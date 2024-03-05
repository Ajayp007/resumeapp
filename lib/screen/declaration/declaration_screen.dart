import 'package:flutter/material.dart';

import '../../utils/global.dart';

class DeclarationScreen extends StatefulWidget {
  const DeclarationScreen({super.key});

  @override
  State<DeclarationScreen> createState() => _DeclarationScreenState();
}

class _DeclarationScreenState extends State<DeclarationScreen> {

  GlobalKey<FormState>formekey=GlobalKey();

  TextEditingController txtDesc=TextEditingController();
  TextEditingController txtDate=TextEditingController();
  TextEditingController txtCity=TextEditingController();

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: const Text(
          "Declaration",
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
              key: formekey,
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
                            "Declaration",
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          const Icon(
                            Icons.adjust_rounded,
                            size: 50,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: ("Description"),
                              hintStyle:
                                  TextStyle(color: Colors.black12, fontSize: 22),

                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                            ),
                            validator: (value) {
                              if(value!.isEmpty || value==null)
                                {
                                  return "Please Enter Description";
                                }
                              return null;
                            },
                            controller: txtDesc,
                            textInputAction: TextInputAction.next,
                          ),
                          const SizedBox(height: 10),
                          const Divider(color: Colors.black),
                          const SizedBox(
                            height: 20,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Flexible(
                                child: Text(
                                  "Date",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: Text(
                                  "Place(Interview Venue/City)",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black45),
                                ),
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
                                    hintStyle: TextStyle(color: Colors.black12),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if(value!.isEmpty || value==null)
                                    {
                                      return "Please Enter The Date";
                                    }
                                    return null;
                                  },
                                  controller: txtDate,
                                ),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              Flexible(
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                    hintText: "Junagadh",
                                    hintStyle: TextStyle(color: Colors.black12),
                                    constraints: BoxConstraints(minWidth: 10),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if(value!.isEmpty || value==null)
                                    {
                                      return "Please Enter The City Name";
                                    }
                                    return null;
                                  },
                                  controller: txtCity,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: InkWell(
                              onTap: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                if(formekey==formekey.currentState!.validate())
                                  {
                                    g1.declDesc = txtDesc.text;
                                    g1.declDate = txtDate.text;
                                    g1.declPlace = txtCity.text;
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
