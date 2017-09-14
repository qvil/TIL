# Regular Expression(정규표현식)

## TIL
* [Regular-Expression](../software/regular-expression.md)

## 참고
* [{*}helloworld 정규표현식 코스](http://tryhelloworld.co.kr/courses/정규표현식)
    * [자바스크립트 정규표현식](http://tryhelloworld.co.kr/courses/정규표현식/lessons/자바스크립트-정규표현식)
* [w3schools](https://www.w3schools.com/jsref/jsref_obj_regexp.asp)

<hr />

## 요약
1. /와 /g가운데에 정규표현식
2. g는 global의 약자, 정규표현식과 일치하는 모든 내용 찾음.
3. String클래스의 match메소드 사용
### 숫자만 구하기
```javascript
var example = "Hello World 2017. Today is Wednesday, 29, 03, 2017"
var regex = /\d+/g;
console.log(example.match(regex));
```
결과
```
["2017", "29", "03", "2017"]
```
g를 뺀 결과
```
["2017", index: 12, input: "Hello World 2017. Today is Wednesday, 29, 03, 2017"]
```

<hr />

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