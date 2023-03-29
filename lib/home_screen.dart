import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pdp_lessons/add_contact_screen.dart';
import 'package:url_launcher/url_launcher.dart';
import 'models/contact_info_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        title: Text(
          "Add",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              )),
        ],
      ),
      body: ListView(
        children: [
          ...List.generate(myContacts.length, (index) {
            return ListTile(
              onLongPress: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        // content: Container(
                        //   height: 200,
                        //   width: 200,
                        //   child: Column(
                        //     children: [],
                        //   ),
                        // ),
                        title: Text(
                            "Are you sure you want to delete this contact?"),
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                                myContacts.removeAt(index);
                                setState(() {});
                              },
                              child: Text("Yes")),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("No")),
                        ],
                      );
                    });
              },
              leading: myContacts[index].imagePath.isEmpty
                  ? SvgPicture.asset("assets/images/default_person_icon.svg")
                  : ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.file(
                        File(myContacts[index].imagePath),
                        width: 45,
                        height: 45,
                        fit: BoxFit.cover,
                      ),
                    ),
              title: Text(
                myContacts[index].name + " ${myContacts[index].surName}",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(myContacts[index].phoneNumber),
              trailing: IconButton(
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(
                      "Calling..",
                      style: TextStyle(color: Colors.black),
                    ),
                    backgroundColor: Colors.white,
                  ));
                  launchUrl(
                      Uri(scheme: "tel", path: myContacts[index].phoneNumber));
                  // launchUrl(Uri(scheme: "https",host:"kun.uz" ,path: ""));
                },
                icon: Icon(
                  Icons.call,
                  color: Colors.green,
                ),
              ),
            );
          })
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddContactScreen(
              transferContact: (newContact) {
                myContacts.add(newContact);
                setState(() {});
              },
            );
          }));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

List<ContactInfoModel> myContacts = [
  ContactInfoModel(
    phoneNumber: "+998991234567",
    name: "ExampleName",
    surName: "ExampleSurname",
    imagePath: "",
  ),
  ContactInfoModel(
    phoneNumber: "+998991234567",
    name: "ExampleName1",
    surName: "ExampleSurname",
    imagePath: "",
  ),
  ContactInfoModel(
    phoneNumber: "+998991234567",
    name: "ExampleName2",
    surName: "ExampleSurname",
    imagePath: "",
  ),
  ContactInfoModel(
    phoneNumber: "+998991234567",
    name: "ExampleName3",
    surName: "ExampleSurname",
    imagePath: "",
  ),
  ContactInfoModel(
    phoneNumber: "+998991234567",
    name: "ExampleName4",
    surName: "ExampleSurname",
    imagePath: "",
  ),
];
