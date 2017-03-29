# Regular Expression(정규표현식)

## TIL
* [Regular-Expression](../software/regular-expression.md)

## 참고
* [{*}helloworld 정규표현식 코스](http://tryhelloworld.co.kr/courses/정규표현식)
    * [자바 정규표현식](http://tryhelloworld.co.kr/courses/정규표현식/lessons/자바-정규표현식)

## 요약
* Pattern과 Matcher라는 Class 사용.
* `\`를 사용하기 위해서는 `\\`를 사용.
    * 이유 : escape 문자 `\`

## 예제

### 전화번호 정규표현식

```java
import java.io.Console;
import java.util.regex.Pattern;
import java.util.regex.Matcher;

public class Regex {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String example = "Hello World 2017. Today is Wednesday, 29, 03, 2017 phone : 010-1234-5678, 02-123-4567, 1234567-1-123456";
		String regex = "\\d{2,3}[- ]?\\d{3,4}[- ]?\\d{4}";
		
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(example);
		while(matcher.find()) {
			System.out.println(matcher.group(0));
		}
	}

}
```
