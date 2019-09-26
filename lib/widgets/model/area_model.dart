/// childs : [null]
/// id : 0
/// name : "string"

//class InvoiceArea {
//  List<InvoiceArea> childs;
//  int id;
//  String name;
//
//  static InvoiceArea fromMap(Map<String, dynamic> map) {
//    if (map == null) return null;
//    InvoiceArea invoiceAreaBean = InvoiceArea();
//    invoiceAreaBean.childs = map['childs'];
//    invoiceAreaBean.id = map['id'];
//    invoiceAreaBean.name = map['name'];
//    return invoiceAreaBean;
//  }
//
//  Map toJson() => {
//    "childs": childs,
//    "id": id,
//    "name": name,
//  };
//}
class AreaModel {
  int id;
  String name;
  List<AreaModel> childs;

  static AreaModel fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
    AreaModel invoiceAreaBean = AreaModel();
    invoiceAreaBean.id = map['id'];
    invoiceAreaBean.name = map['name'];
    invoiceAreaBean.childs = List()..addAll(
        (map['childs'] as List ?? []).map((o) => AreaModel.fromMap(o))
    );
    return invoiceAreaBean;
  }

  Map toJson() => {
    "id": id,
    "name": name,
    "childs": childs,
  };
}

