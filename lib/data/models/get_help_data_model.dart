class GetHelpDataModel{
  int? id ;
  String? question;
  String? answer;

  GetHelpDataModel.fromJson(Map<String,dynamic>json){
    id = json['id'];
    question = json['question'];
    answer = json['answer'];
  }
}