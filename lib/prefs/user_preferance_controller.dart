import 'package:deliveryapp/app/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferenceController{

  static final UserPreferenceController _instance=
  UserPreferenceController._internal();

  late SharedPreferences _sharedPreferences;

  UserPreferenceController._internal();

  factory UserPreferenceController(){
    return _instance;
  }

  Future<void> initSharedPreference () async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
  Future<void> saveStudent({required User user}) async{
    _sharedPreferences.setBool('logged_in', true);
    _sharedPreferences.setInt('id', user.id!);
    _sharedPreferences.setInt('type', user.type!);
    _sharedPreferences.setInt('status', user.status!);
    _sharedPreferences.setString('name', user.name!);
    _sharedPreferences.setString('email', user.email!);
    _sharedPreferences.setString('username', user.username!);
    _sharedPreferences.setString('emailVerifiedAt', user.emailVerifiedAt!);
    _sharedPreferences.setString('createdAt', user.createdAt!);
    _sharedPreferences.setString('updatedAt', user.updatedAt!);
    _sharedPreferences.setString('insurance', user.insurance!);
    _sharedPreferences.setString('percent', user.percent!);
    _sharedPreferences.setString('identity', user.identity!);
    _sharedPreferences.setString('marital', user.marital!);
    _sharedPreferences.setString('mobile', user.mobile!);
    _sharedPreferences.setString('urgentName', user.urgentName!);
    _sharedPreferences.setString('urgentType', user.urgentType!);
    _sharedPreferences.setString('urgentMobile', user.urgentMobile!);
    _sharedPreferences.setString('startBalance', user.startBalance!);
    _sharedPreferences.setString('address', user.address!);
    _sharedPreferences.setString('deviceToken', user.deviceToken!);
    _sharedPreferences.setString('lat', user.lat!);
    _sharedPreferences.setString('lng', user.lng!);
    _sharedPreferences.setString('isOnline', user.isOnline!);
    _sharedPreferences.setString('token', "Bearer${user.token}");

  }
  //
  //
  bool get loggedIn =>_sharedPreferences.getBool('logged_in')??false;
  String get token =>_sharedPreferences.getString('token')??'';


  Future<bool> loggedOut()async{
    return await _sharedPreferences.clear();
  }

}