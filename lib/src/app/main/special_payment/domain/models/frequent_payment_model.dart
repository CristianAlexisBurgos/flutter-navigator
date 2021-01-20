class FrequentPaymentModel {
  int _id;
  String _name;
  int _mount;

  FrequentPaymentModel({int id, String name, int mount}) {
    this._id = id;
    this._name = name;
    this._mount = mount;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get name => _name;
  set name(String name) => _name = name;
  int get mount => _mount;
  set mount(int mount) => _mount = mount;

  FrequentPaymentModel.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _mount = json['mount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['name'] = this._name;
    data['mount'] = this._mount;
    return data;
  }
}
