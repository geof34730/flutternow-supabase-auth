import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Services/Supabase-Auth.dart';

Container AuthRegister() {
  final _formKeyAuth = GlobalKey<FormState>();
  return Container(
    padding: EdgeInsets.all(10),
    alignment: Alignment.topLeft,
    color: Colors.grey,
    child: Form(
      key: _formKeyAuth,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Inscription',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child:TextFormField(
              decoration: const InputDecoration(
                fillColor: Color(0xFFE0E0E0),
                filled: true,
                icon: Icon(Icons.person),
                labelText: 'Lastname *',
              ),
              validator: (String? value) {
                return (value == null && value=="" ) ? 'add password' : null;
              },
            ),
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child:TextFormField(
                decoration: const InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  icon: Icon(Icons.person),
                  labelText: 'Firstname *',
                ),
                validator: (String? value) {
                  return (value == null && value=="" ) ? 'add password' : null;
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child:
              TextFormField(
                decoration: const InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  icon: Icon(Icons.email),
                  labelText: 'Email *',
                ),
                validator: (String? value) {
                  return (value == null && value=="" ) ? 'add password' : null;
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child:TextFormField(
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color(0xFFE0E0E0),
                  filled: true,
                  icon: Icon(Icons.password),
                  labelText: 'Password *',
                ),
                validator: (String? value) {
                  return (value == null && value=="" ) ? 'add password' : null;
                },
              )
          ),
          Padding(
              padding: EdgeInsets.all(10),
              child:ElevatedButton(
                onPressed: () {
                  if (_formKeyAuth.currentState!.validate()) {
                    SupabaseAuthService().signUpUser(
                      email: "geoffrey.petain@gmail.com",
                      password: "testgdgdghsk",
                      lastName: "Pétain",
                      firstName: "Geoffrey",
                    );
                  }
                },
                child: const Text('Save'),
              )
          ),
        ],
      )
    ),
  );
}
