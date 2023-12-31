library api;

import 'package:dio/dio.dart';
import 'package:todo_app/app/core/dio/fetch.dart';

part 'auth_api.dart';
part 'user_api.dart';
part 'kegiatan_api.dart';

BaseOptions dioOptions({String? baseUrl}) => BaseOptions(
    followRedirects: false,
    baseUrl: 'http://192.168.18.106:8000/',
    connectTimeout: const Duration(seconds: 60),
    receiveTimeout: const Duration(seconds: 200),
    headers: {'Accept': 'application/json', 'Content-Type': 'application/json'},
    responseType: ResponseType.plain,
    validateStatus: (status) => status! <= 598);

Dio dio = Dio(dioOptions());

mixin UseApi {
  AuthApi authApi = AuthApi();
  UserApi userApi = UserApi();
  KegiatanApi kegiatanApi = KegiatanApi();
  KegiatanApi2 kegiatanApi2 = KegiatanApi2();
}
