import 'package:flutter/material.dart';

import 'models/contact_info_model.dart';

class AddContactScreen extends StatefulWidget {
  const AddContactScreen({Key? key, required this.transferContact})
      : super(key: key);

  final ValueChanged<ContactInfoModel> transferContact;

  @override
  State<AddContactScreen> createState() => _AddContactScreenState();
}

class _AddContactScreenState extends State<AddContactScreen> {
  final phoneController = TextEditingController();
  final nameController = TextEditingController();
  final surnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        elevation: 3,
        title: Text(
          "Contacts",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {
                //Step 1
                ContactInfoModel newContact = ContactInfoModel(
                  phoneNumber: phoneController.text,
                  name: nameController.text,
                  surName: surnameController.text,
                );
                // Step 2
                widget.transferContact.call(newContact);
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.done,
                color: Colors.black,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: nameController,
              decoration: InputDecoration(
                  hintText: "Enter name",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(height: 10),
            Text(
              "Surname",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: surnameController,
              decoration: InputDecoration(
                  hintText: "Enter surname",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
            const SizedBox(height: 10),
            Text(
              "Phone",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: phoneController,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                  hintText: "+9989_ ___ __ __",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5))),
            ),
          ],
        ),
      ),
    );
  }
}
