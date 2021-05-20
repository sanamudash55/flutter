class Contact {
  static const tblcontact = 'contacts';
  static const colId = 'id';
  static const colName = 'name';
  static const colMobil = 'mobile';

  Contact({this.id, this.name, this.number});
  int id;
  String name;
  String number;

  Contact.fromMap(Map<String, dynamic> map) {
    id = map[colId];
    name = map[colName];
    number = map[colMobil];
  }

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{colName: name, colMobil: number};
    if (id != null) {
      map[colId] = id;
    }
    return map;
  }
}
