# Hiding

>JVM 이 메서드를 호출할 때, instance method 의 경우 런타임 시 해당 메서드를 구현하고 있는 실제 객체를 찾아 호출합니다. (다형성) 하지만 컴파일러와 JVM 모두 static 메서드에 대해서는 실제 객체를 찾는 작업을 시행하지 않기 때문에 class method(static method)의 경우, 컴파일 시점에 선언된 타입의 메서드를 호출합니다. 그래서 static 메소드에서는 다형성이 적용되지 않습니다. 
>또 원칙적으로 오버라이딩은 안되지만 아래 코드처럼은 가능합니다. 자바언어에서 이같은 경우를 하이딩(hiding)이라고 하는데요. 하이딩은 이론적으로만 존재할뿐 실제 클래스 설계시에는 추천할만한 기술은 아닙니다. [hashcode](http://hashcode.co.kr/questions/358/왜-자바에서-static메소드의-오버라이딩을-허용하지-않는걸까요)

## 결론

* Static 메서드는 overriding 안되는데 이걸 hiding으로 overriding하는 것 처럼 설계할 수는 있으나
* **추천하지 않는 기술이다.**

## 참고

* [Overriding Vs Hiding - Override Static Method](http://ohgyun.com/242)
* [왜 자바에서 static메소드의 오버라이딩을 허용하지 않는걸까요? - hashcode](http://hashcode.co.kr/questions/358/왜-자바에서-static메소드의-오버라이딩을-허용하지-않는걸까요)
* [오버로딩, 오버라이딩의 기본개념 - ITPangPang](http://itpangpang.xyz/105)