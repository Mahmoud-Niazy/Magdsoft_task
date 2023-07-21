part of 'global_cubit.dart';

@immutable
abstract class GlobalState {}

class GlobalInitial extends GlobalState {}

class VerifyPhoneLoadingState extends GlobalState{}
class VerifyPhoneSyccessfullyState extends GlobalState{
  final Map<String,dynamic>? response;
  VerifyPhoneSyccessfullyState(this.response);
}
class VerifyPhoneErrorState extends GlobalState{
  final String? error;
  VerifyPhoneErrorState(this.error);
}


class CheckCodeLoadingState extends GlobalState {}
class CheckCodeSuccessfullyState extends GlobalState {
  final Map<String,dynamic>? response;
  CheckCodeSuccessfullyState(this.response);
}
class CheckCodeErrorState extends GlobalState {
  final String? error;
  CheckCodeErrorState(this.error);
}

class GetHelpLoadingState extends GlobalState {}
class GetHelpSuccessfullyState extends GlobalState {
  final Map<String,dynamic>? response;
  GetHelpSuccessfullyState(this.response);
}
class GetHelpErrorState extends GlobalState {
  final String? error;
  GetHelpErrorState(this.error);
}

class GetAllProductsLoadingState extends GlobalState {}
class GetAllProductsSuccessfullyState extends GlobalState {
  final Map<String,dynamic>? response;
  GetAllProductsSuccessfullyState(this.response);
}
class GetAllProductsErrorState extends GlobalState {
  final String? error;
  GetAllProductsErrorState(this.error);
}



