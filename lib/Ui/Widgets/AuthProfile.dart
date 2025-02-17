import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../Services/Supabase-Auth.dart';


Container AuthProfile() {
  final supabaseClient=Supabase.instance.client;

  final user = supabaseClient.auth.currentUser;
  final userMetadata = user?.userMetadata ?? {};
  return Container(
      color: Colors.blue,
      child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child:Text(
                  'Your profile',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child:Text(
                    'Your email : ${supabaseClient.auth.currentUser?.email}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child:Text(
                    'firstname : ${userMetadata['firstName']}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child:Text(
                    'Lastname : ${userMetadata['lastName']}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(5),
                  child:Text(
                    'email_verified : ${userMetadata['email_verified']}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child:Text(
                    'created_at : ${supabaseClient.auth.currentUser?.createdAt}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child:Text(
                    'email_ConfirmedAt : ${supabaseClient.auth.currentUser?.emailConfirmedAt}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  )
              ),

              Padding(
                  padding: EdgeInsets.all(10),
                  child:ElevatedButton(
                    onPressed: () {
                      SupabaseAuthService().signOutUser();
                    },
                    child: const Text('Log Out'),
                  )
              ),
            ],
          )
    );
}
