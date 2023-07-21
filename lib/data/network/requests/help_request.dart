import 'package:dio/dio.dart';

import '../../data_providers/remote/dio_helper.dart';

Future getHelpRequest() async {
  try {
    Response response = await DioHelper.getData(
      url: 'getHelp',
      query: {},
    );
    return response.data['help'];
  } catch (error) {
  }
}
