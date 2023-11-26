void main() {
  // 가변형 var / dynamic
  var value = 1;
  value = 2;
  // value = 'value is string'; 최초 부여된 타입이 고정되므로 컴파일 에러 발생
  print(value);

  dynamic dynamicValue = 1;
  print(dynamicValue);
  dynamicValue = 'dynamicValue is String'; // 타입이 언제든 변환될 수 있다.
  print(dynamicValue);
}