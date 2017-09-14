# Java폴더 참고하자
* Java
    * [overloading](../java/overloading.md)
    * [overriding](../java/overriding.md)
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

## 정의
>상위 클래스의 메소드를 재정의
## 기본 조건
* 메소드의 이름, (인자 갯수, 타입), 리턴타입 같아야 함.
* Static 메서드 오버라이딩 허용 안 함.
## 예제
```java
class Parent {	
	public void print() {
		System.out.println("Parent");
	}
}
```
```java
class Child extends Parent {
	public void print() {
		System.out.println("Child");
	}
}
```
```java
public class OverRide {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Parent parent = new Parent();
		Child child = new Child();
		
		parent.print();
		child.print();
	}
}
```
## 결과
```
Parent
Child
```