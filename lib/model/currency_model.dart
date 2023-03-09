class CurrencyModel{
  String? id;
  String? title;
  String? price;
  String? changes;
  String? status;

  CurrencyModel.fromJson(Map<String,dynamic> json){
    id = json["id"];
    title = json["title"];
    price = json["price"];
    changes = json["changes"];
    status = json["status"];
  }
}
