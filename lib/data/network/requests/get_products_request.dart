import 'package:dio/dio.dart';

import '../../data_providers/remote/dio_helper.dart';

Future getAllProductsRequest() async {
  try {
    Response response = await DioHelper.getData(
      url: 'getProducts',
      query: {},
    );
    return response.data['products'];
  } catch (error) {}
}
