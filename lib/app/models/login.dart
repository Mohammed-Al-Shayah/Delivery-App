import 'package:deliveryapp/app/models/user.dart';

class ShopLoginModel {
 late bool? status;
 late String? errNum;
 late String? msg;
 late User? user;


  ShopLoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    errNum = json['errNum'];
    msg = json['msg'];
    user = json['user'] ;
  }


}