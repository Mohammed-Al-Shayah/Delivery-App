import 'package:deliveryapp/prefs/user_preferance_controller.dart';
import 'package:flutter/material.dart';
class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFC6011),
        actions: [
          IconButton(onPressed: ()async{logout();}, icon: Icon(Icons.logout,color: Color(0xffFFFFFF),),),
        ],
      ),
    );
  }


  Future<void>logout()async{
    bool status  =await UserPreferenceController().loggedOut();
    if(status){
      Navigator.pushNamed(context,'/login_screen');
    }else{
      // showSnackBar(context: context, message: 'logout failed');
    }
  }
}
