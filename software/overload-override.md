# Overload

>함수(메소드) 이름 같고 인자 갯수나 타입이 다른 함수 정의하는 것.
>(리턴값만 다른 오버로드는 안됨.)

## 예제

```javascript
function sum(a, b) {
    return a+b;
}
```
```javascript
function sum(a, b, c) {
    return a+b+c;
}
```

# Override

>상위 클래스의 메소드를 재정의

* 메소드의 이름, 인자 갯수, 타입, 리턴타입 같아야 함.