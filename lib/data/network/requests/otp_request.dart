import 'package:dio/dio.dart';

import '../../data_providers/remote/dio_helper.dart';

Future otpRequest({required Map<String, dynamic> data}) async {
  try {
    Response response = await DioHelper.postData(
      url: 'otp',
      body: data,
    );
    return response.data;
  } catch (error) {}
}
