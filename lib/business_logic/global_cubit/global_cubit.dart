import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:magdsoft_flutter_structure/data/models/get_help_data_model.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/help_request.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/otp_request.dart';
import '../../data/models/product_data_model.dart';
import '../../data/network/requests/get_products_request.dart';
import '../../data/network/requests/login_request.dart';
part 'global_state.dart';

class GlobalCubit extends Cubit<GlobalState> {
  GlobalCubit() : super(GlobalInitial());

  static GlobalCubit get(context) => BlocProvider.of(context);

  userLogin({
    required Map<String, dynamic> data,
  }) {
    emit(VerifyPhoneLoadingState());
    userLoginRequest(data: data).then((value) {
      print(value);
      emit(VerifyPhoneSyccessfullyState(value));
    }).catchError((error) {
      emit(VerifyPhoneErrorState(error.toString()));
    });
  }

  checkCode({
    required Map<String, dynamic> data,
  }) {
    emit(CheckCodeLoadingState());
    otpRequest(data: data).then((value) {
      print(value);
      emit(CheckCodeSuccessfullyState(value));
    }).catchError((error) {
      emit(CheckCodeErrorState(error.toString()));
    });
  }

  List<GetHelpDataModel> help = [];
  getHelp() {
    emit(GetHelpLoadingState());
    getHelpRequest().then((value) {
      value.forEach((element){
        help.add(GetHelpDataModel.fromJson(element));
      });
      emit(GetHelpSuccessfullyState(value));
    }).catchError((error) {
      emit(GetHelpErrorState(error.toString()));
    });
  }

  List<ProductDataModel> allProducts = [];
  GetAllProducts() {
    emit(GetAllProductsLoadingState());
    getAllProductsRequest().then((value) {
      value.forEach((element){
        allProducts.add(ProductDataModel.fromJson(element));
      });
      emit(GetAllProductsSuccessfullyState(value));
    }).catchError((error) {
      emit(GetAllProductsErrorState(error.toString()));
    });
  }
}
