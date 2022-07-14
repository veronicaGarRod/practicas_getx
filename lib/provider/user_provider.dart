import 'package:dio/dio.dart';

import '../models/response_user_model.dart';

class UserProvider{

Future<List<User>> getAllUsers() async{
var dio = Dio();
final response  = await dio.get("https://reqres.in/api/users?",
queryParameters: {"page":1}
);

return(response.data["data"] as List )
.map((json)=>User.fromJson(json)).toList();
}
  
}