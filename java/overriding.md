# Overriding

## 정의
>상위 클래스의 메소드를 재정의
## 기본 조건
* 메소드의 이름, (인자 갯수, 타입), 리턴타입 같아야 함.
* Static 메서드 오버라이딩 허용 안 함. [참고](http://itpangpang.xyz/105)
    * overrding이 아닌 [hiding](./hiding.md)처리 됨.
## 예제(상속받은 메서드 사용)
```java
class Parent {	
	public void print() {
		System.out.println("Parent");
	}
}
```
```java
class Child extends Parent {

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
Parent
```
## 예제(상속받은 메서드 Override)
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