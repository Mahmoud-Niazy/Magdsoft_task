import 'package:dio/dio.dart';

import '../../data_providers/remote/dio_helper.dart';

Future userLoginRequest({required Map<String, dynamic> data}) async {
  try {
    Response response = await DioHelper.postData(
      url: 'verifyPhone',
      body: data,
    );
    return response.data;
  } catch (error) {}
}
