import 'package:contacts/models/contact.model.dart';
import 'package:flutter/material.dart';

class EditorContactView extends StatelessWidget {
  final ContactModel contactModel;

  EditorContactView({this.contactModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            contactModel == null ? Text("New Contact") : Text("Edit Contact"),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                initialValue: contactModel?.name,
                onSaved: (val) => contactModel.name = val,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Phone Number",
                ),
                initialValue: contactModel?.phone,
                onSaved: (val) => contactModel.phone = val,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "E-mail",
                ),
                initialValue: contactModel?.email,
                onSaved: (val) => contactModel.email = val,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: FlatButton.icon(
                  color: Theme.of(context).primaryColor,
                  onPressed: () {},
                  icon: Icon(
                    Icons.save,
                    color: Theme.of(context).accentColor,
                  ),
                  label: Text(
                    "Save",
                    style: TextStyle(
                      color: Theme.of(context).accentColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
