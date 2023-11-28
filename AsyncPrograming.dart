void main() {
  print(createUserOrder());

  fetchUserOrder2();
  print('Fetching user order...');

  //fetchUserOrder3();

  createUserOrder2();
}

String createUserOrder() {
  var order = fetchUserOrder();
  return 'Your order is $order';
}

Future<void> createUserOrder2() async {
  var order = await fetchUserOrder4();
  print('Your order is $order');
}

Future<String> fetchUserOrder() => Future.delayed(Duration(seconds: 2), () => 'Large Latte');

Future<void> fetchUserOrder2() { return Future.delayed(Duration(seconds: 2), () => print('Large Latte')); }

Future<void> fetchUserOrder3() { return Future.delayed(Duration(seconds: 2), () => throw Exception('Logout failed: user ID is invaild')); }

Future<String> fetchUserOrder4() { return Future.delayed(Duration(seconds: 4), () => 'Large Latte'); }