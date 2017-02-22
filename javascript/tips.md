# Tips

## 변수

### 문자, 숫자 사칙연산시

예제
```js
var a = "1";
a = a + 1; // "11"
a++; // 2
```
```js
var a = Number("1");
a = a + 1; // 2
```
```js
var a = "1";
a = Number(a) + 1; // 2
```
```js
var Number(a) = "1"; // Uncaught SyntaxError
```