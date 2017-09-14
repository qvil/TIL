# Regular Expression(정규표현식)

## TIL
* [자바스크립트 정규표현식](../javascript/regular-expression.md)
* [자바 정규표현식](../java/regular-expression.md)

## 참고
* [{*}helloworld 정규표현식 코스](http://tryhelloworld.co.kr/courses/정규표현식)
    * [자바스크립트 정규표현식](http://tryhelloworld.co.kr/courses/정규표현식/lessons/자바스크립트-정규표현식)

## 숫자
* \d : (digit의 약자)모든 숫자
* \d+ : 연결된 숫자

## 문자
* ? : 있거나 없거나
    * 예) [- ]? : -과 공백이 있거나 없거나
* {} : 반복
    * 예) \d{2} : 두번의 숫자가 나타난다.
    * 예) \d{2,3} : 두번~세번의 숫자가 나타난다.
* 영어소문자 : [a-z] 혹은 [abcdefghijklmnopqrlstuvwxyz]
* 영어소문자 반복 : [a-z]+
* 한글 :
    * [가-힣] : ㄱㄴㄷ, ㅏㅑㅓ 낱 글자는 포함 안됨.
    * [가-힣]+ : 연속된 한글.

* 대표문자
* \s 공백문자(스페이스, 탭, 뉴라인)
* \S 공백문자를 제외한 문자
* \D 숫자를 제외한 문자
* \W 글자 대표문자를 제외한 글자들(특수문자, 공백 등)

## 예제
### 전화번호 정규표현식
```javascript
var example = "Hello World 2017. Today is Wednesday, 29, 03, 2017 phone : 010-1234-5678, 02-123-4567, 1234567-1-123456"
var regex = /\d{2,3}[- ]?\d{3,4}[- ]?\d{4}/g;
console.log(example.match(regex));
```
결과
```
["010-1234-5678", "02-123-4567"]
```
### 한글 정규표현식
```javascript
var example = "Hello World 2017. 안녕하세요. 반갑습니다. ㄱㄴㄷ, ㅏㅑㅓ"
var regex = /[가-힣]+/g;
console.log(example.match(regex));
```
결과
```
["안녕하세요", "반갑습니다"]
```
```javascript
var example = "Hello World 2017. 안녕하세요. 반갑습니다. ㄱㄴㄷ, ㅏㅑㅓ"
var regex = /[ㄱ-ㅣ]+/g;
console.log(example.match(regex));
```
결과
```
["ㄱㄴㄷ", "ㅏㅑㅓ"]
```
### 영어 소문자 모음(a,e,i,o,u) 정규표현식
```javascript
var example = "Hello World 2017. Today is Wednesday, 29, 03, 2017 phone : 010-1234-5678, 02-123-4567, 1234567-1-123456"
var regex = /[aeiou]/g;
console.log(example.match(regex));
```
결과
```
["e", "o", "o", "o", "a", "i", "e", "e", "a", "o", "e"]
```
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