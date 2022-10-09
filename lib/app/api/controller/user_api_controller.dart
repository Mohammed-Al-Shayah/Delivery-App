import 'dart:convert';

import 'package:deliveryapp/app/api/api_settings.dart';
import 'package:deliveryapp/app/models/user.dart';
import 'package:deliveryapp/prefs/user_preferance_controller.dart';
import 'package:http/http.dart' as http;
class UserApiController {
  Future <bool> login ({
  required String email,
  required String password,
}) async{
    var url = Uri.parse(ApiSettings.LOGIN);
    var response=await http.post(url,body: {
      'email':email,
      'password':password,
    });
    if(response.statusCode==200){
      var jsonResponse = jsonDecode(response.body);
      User user =User.fromJson(jsonResponse['user']);
        UserPreferenceController().saveStudent(user: user);
        return true;
    }
    else if(response.statusCode==400){

    }
    else{

    }
    return false;
  }
}