void main() {
  // 참 / 거짓형 bool
  bool isTrue = true;

  // 정수형 int
  int num = 100;
  //int num2 = 3.14 as int; as 는 뒤에 오는 형으로 변환시켜줄 수 있으나, 상위 타입으로만 변환 가능하다.
  int num3 = 3.14.round();

  // 실수형 double
  double d_num1 = 3.14;
  double d_num3 = 3.roundToDouble();

  print(d_num3);

  // 문자열형 String
  String str = 'hello';
  String str2 = "world";

  print(str + ' ' + str2);

  // Null형
  Null isNull = null;
  print(isNull);
  print(isNull == null);
}