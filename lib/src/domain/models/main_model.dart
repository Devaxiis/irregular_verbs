

class MainModel{
  String present;
  String past;
  String future;
  String translate;
  MainModel({
    required this.present,
    required this.past,
    required this.future,
    required this.translate,
});

  factory MainModel.fromJson(Map<String,Object?> json) => MainModel(
  present: json["present"] as String,
  past: json["past"] as String,
  future: json["future"] as String,
  translate: json["translate"] as String);


  Map<String,Object?> toJson()=>{
    "present":present,
    "past":past,
    "future":future,
    "translate":translate,
  };


}