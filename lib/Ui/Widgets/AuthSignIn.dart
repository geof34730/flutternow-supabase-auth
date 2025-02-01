import 'package:flutter/material.dart';
import '../../Services/Supabase-Auth.dart';

Container AuthSignIn() {
  final _formKeySignIn = GlobalKey<FormState>();
  return Container(
      color: Colors.green,
      child:Form(
          key: _formKeySignIn,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child:Text(
                  'Identification',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child:TextFormField(
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
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child:ElevatedButton(
                    onPressed: () {
                      if (_formKeySignIn.currentState!.validate()) {
                        SupabaseAuthService().signInUser(
                          email: "geoffrey.petain@gmail.com",
                          password: "testgdgdghsk",
                        );
                      }
                    },
                    child: const Text('Save'),
                  )
              ),
            ],
          )
      )
  );
}
