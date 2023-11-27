void main() {

  // 동기 / 비동기
  // 동기 : 코드가 순차적으로 실행되는 형태
  // 비동기 : 모든 코드가 동시 다발적으로 실행되어 순차적인 결과를 보장할 수 없는 형태

  // async / await / Future

  Future<void> todo(int second) async {
    await Future.delayed(Duration(seconds: second));

    print('Todo Done in $second seconds');
  }

  todo(3);
  todo(1);
  todo(5);


  // async / yield / Stream

  Stream<int> todoStream() async* {
    int count = 0;

    while(count < 10) {
      await Future.delayed(Duration(seconds: 1));

      count++;
      print('TodoStream is Running $count');
      yield count;
    }

    print('TodoStream is Done');

  }

  todoStream().listen((event) { });
}
