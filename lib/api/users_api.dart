import 'dart:convert';

import 'package:fun_facts_mobile/api/api_base.dart';
import 'package:fun_facts_mobile/dto/register_dto.dart';

class UsersApi extends ApiBase{
  dynamic login(String username, String password) async {
    print(username);
    print(password);
    var res =await makePost('/auth/login', {'username': username, 'password': password});
    print('here');
    return res;
  }
  dynamic register(RegisterDto registerDto) async {
    var res = await makePost('/auth/register', registerDto.toJson());
    print(res);
    print(json.decode(res));
  }
}