# Number

숫자 값 비교할 때 string 타입으로 비교되는 것 주의하자

## 예

```javascript
// Bad
var min = "1";
var max = "2";
typeof min // string
typeof max // string
min < max // true 긴 한데 비교가 제대로 안되는 경우가 있음.
```

```javascript
// Good
var min = "1";
var max = "2";
typeof Number(min) // number
typeof Number(max) // number
Number(min) < Number(max) // true
```

`
문자열 숫자로 바꾸는 방법은 곱셈등 사칙연산이나 비트연산도 있고 이에 따라 속도차이도 있지만 나는 명시적으로 보이는게 중요하다고 생각해서 Number()사용
`

## 참고
[[JavaScript] 문자를 숫자로 바꾸는 가장 좋은 방법은 무엇일까? | 속도비교](http://programmingsummaries.tistory.com/355)