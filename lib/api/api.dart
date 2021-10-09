import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../constanct.dart';

class Api {
  getUsersAuthenticate(String username,String password) async
  {
      String url= baseApiUrl+"/Users/authenticate";
      http.Response response = await http.post(
       Uri.parse(url),headers:(<String,String>
          {
            'Content-Type':'application/json'
          }
         ),
          body: jsonEncode(<String,String>{
            "username": username.toString(),
            "password": password.toString()
          }
          )
        ); 
        print(response);
      if (response.statusCode != 200){
        return  response;
      }
      else{
        print("-----> body ");
        print(response.body);
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("user", response.body);
      }
      return response;
      
      // return json.decode(
      //   response.body
      // );
    }
    getUsersAll() async{
      final prefs = await SharedPreferences.getInstance();
      String? token = prefs.getString("token");
      String url= baseApiUrl+"/users";
      http.Response response = await http.get(
       Uri.parse(url),headers:(<String,String>
          {
            'Content-Type':'application/json',
            'Authorization': 'Bearer $token'
          }
         )
        );
        if(response.statusCode != 200){
          return response;
        }
       print(response.statusCode);
       print(response.body);
      return response ;
      
    }
    
    insUsers(String username,String firstName,String lastName,String email,String password,String status,String picture,bool socialLogin) async 
    {
      try{
      final prefs = await SharedPreferences.getInstance();
      String? tokenId = prefs.getString("tokenId");
      String? userName = prefs.getString("username");
      String url= baseApiUrl+"/Users/insUser";
       
      final jsonBody = jsonEncode(
              {"userName": username,
              "firstName": firstName,
              "lastName": lastName,
              "email": email,
              "password": password,
              "status": status,
              "picture": picture,
              "createdBy": userName,
              "updatedBy": userName,
              "socialLogin": socialLogin});
       http.Response response = await http.post(
       Uri.parse(url),headers:(<String,String>
          {
            'Content-Type':'application/json',
            'Authorization': 'Bearer $tokenId'
          }
         ),
         body:jsonBody
        );
        if(response.statusCode != 200){
          return response;
        }
      print(response.statusCode);
      print(response.body);
      return response ;
      }
      catch(e){
        print(e.toString());
        return ;
      }

    }
    updUser(String id,String firstName,String lastName,String email,String status,String picture) async{
      try{
      final prefs = await SharedPreferences.getInstance();
      String? tokenId = prefs.getString("tokenId");
      String? userName = prefs.getString("username");
      String url= baseApiUrl+"/Users/updUser";
      final jsonBody = jsonEncode(
              { 
              "id": id,
              "firstName": firstName,
              "lastName": lastName,
              "email": email,
              "status": status,
              "picture": picture,
              "updatedBy": userName}
              );
       http.Response response = await http.post(
       Uri.parse(url),headers:(<String,String>
          {
            'Content-Type':'application/json',
            'Authorization': 'Bearer $tokenId'
          }
         ),
         body:jsonBody
        );
        if(response.statusCode != 200){
          return response;
        }
        return response ; 
      }catch(e){
        print(e.toString());
        return ;
      }
    }
    // Future<http.Response> fetchPhotos(http.Client client) async {
    //   return client.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
    // }
    getAllPhoto() async {
      try{
      var url = Uri.parse("https://jsonplaceholder.typicode.com/photos");
      //var url = Uri.parse("https://jsonplaceholder.typicode.com/users");
      var client = http.Client();
      final response = await client.get(url);
        if(response.statusCode != 200){
          return response;
        }
      //  print(response.statusCode);
      //  print(response.body);
      return response ;
      }
      catch(e){
        print(e.toString());
        return ;
      }
    }
}