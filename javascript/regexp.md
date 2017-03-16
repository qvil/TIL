# RegExp

* 정규표현식을 공부해보자
* 예제만 참고하고 아래 사이트에서 보는게 빠르겠다.

[w3schools](https://www.w3schools.com/jsref/jsref_obj_regexp.asp)

## Syntax

```
/pattern/modifiers;
```

```
/string/
^string 문자열 시작지점에 ^를 쓰고
string$ 문자열 끝지점에 $를 쓰자
```


## 예제

### 정수형 자리수 검사

```javascript
/^[0-9]{1,5}$/ // 0부터 9까지의 숫자만 1에서 5자리까지
/^\d{1,5}$/ // digit(정수형) 1에서 5자리까지

var regexp = /^[0-9]{1,5}$/;

regexp.test( 123 ) // true;
regexp.test( "abc" ) // false;
```

### 문자열 대소문자 구분

modifiers i 넣으면 대소문자 구분없이 일치 검사

```javascript
var regexp = /^abc$/;

regexp.test( "abc" ) // true;
regexp.test( "ABC" ) // false;
```

```javascript
var regexp = /^abc$/i;

regexp.test( "abc" ) // true;
regexp.test( "ABC" ) // true;
```