class Logins {
  final int id;
  final String name;
  final String call;
  final String password;
  final String comfirm;
  Logins({this.id, this.name, this.call, this.password, this.comfirm});
  factory Logins.fromJson(Map<String, dynamic> json) {
    return Logins(
        id: json['_id'],
        name: json['name'],
        call: json['call'],
        password: json['password'],
        comfirm: json['comfirm']);
  }
}
