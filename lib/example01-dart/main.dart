main() {
  var list = [1,2,3];
  list.add(4);
  print(list);
  User('sd', address: 'dfdf');
}

class User {
  final name;
  String address;
  User(this.name, {this.address});

  _get(int a, {String name: 'BO', String address: '956'}) {

    return 'df';


  }
  _a() {
    _get(10, name: 'BO');
  }

}