# Overloading

>함수(메소드) 이름 같고 인자 갯수나 타입이 다른 함수 정의하는 것.
>(리턴값만 다른 오버로드는 안됨.)

## 예제

```java
class A {
	public int sum(int a, int b) {
		return a+b;
	}
}

class B extends A {
	public int sum(int a, int b, int c) {
		return a+b+c;
	}
	public String sum(String a, String b) {
		return a+b;
	}
}
public class Overload {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		B b = new B();
		System.out.println(b.sum(1, 2));
		System.out.println(b.sum("a", "b"));
		System.out.println(b.sum(1, 2, 3));
	}
}
```
```
3
ab
6
```