# Floating Point Math(부동소수점 비교연산)

## 이슈

```javascript
var a = 0.1;
var b = 0.2;
a+b // 0.30000000000000004
```

```javascript
0.3+0.6 // 0.8999999999999999
```

## 원인

[네이버지식인](http://kin.naver.com/qna/detail.nhn?d1id=1&dirId=1040202&docId=111685795&qb=amF2YXNjcmlwdCDrsoTqt7gg7IaM7IiY&enc=utf8&section=kin&rank=1&search_sort=0&spq=0&pid=gdL46v331xwsscdSbCwssv--283939&sid=TQH0DQ7tAU0AAB5gKlo)
```javascript
아래 주소에서 보다 자세한 내용을 참고해보시고요..
http://www.merlyn.demon.co.uk/js-maths.htm
http://www.merlyn.demon.co.uk/js-round.htm
 
 
간단히 코드를 보여 드리면 아래와 같이 하시면 됩니다.
 
var a=0.6;
var b=0.3;
var T=Number('1e'+1);
alert(Math.round((a+b)*T)/T);

자바스크립트는 부동소수점 방식(floating point)으로 계산을 하며 IEEE Standard 754규격을 따릅니다.
그리고 실수의 변환을 위해 53bit의 연산을 합니다.
정수인 경우에는 해당 기억공간의 범위안에서 정확한 결과를 나타내는데,,
실수인 경우에는 기억공간의 범위를 벗어나는 결과가 나타나면 나머지수를 버립니다.

컴퓨터가 연산을 위해 소수점 이하의 자릿수를 이진수로 변환하는 과정이 존재합니다.
0.3 을 이진수로 바꾸는 예를 보겠습니다.

0.3 * 2 = 0.6
0.6 * 2 = 1.2
0.2 * 2 = 0.4
0.4 * 2 = 0.8
0.8 * 2 = 1.6
0.6.. <== 다시 0.6이 나와,, 0.0100110011001.... 와 같이 무한히 반복하게 됩니다.
0.3의 이진수처럼 기억공간의 한계를 벗어나는 결과치가 나오는 경우에는
부정확한(최대한 가까운?) 연산을 하게 되는 것입니다.
이해가 되셨는지 모르겠네요..

예 )
alert(2*(1e-1));//0.2 ==> 0.2
alert(3*(1e-1));//0.3 ==> 0.30000000000000004
```

## 해결방법

### toFixed() 사용

```javascript
var a = 0.1;
var b = 0.2;
(a+b).toFixed(1); // "0.3""
(a+b).toFixed(3) // "0.300"
(a+b).toFixed(5) // "0.30000"

// 브라우저 console에서 "0.3"으로 출력되길래 typeof를 해봤더니..
var c = (a+b).toFixed(1);
typeof c; // "string"
c = Number(c);
typeof c // "number"
```

### epsilon 보정 비교 함수 사용

[tistory](http://bloodguy.tistory.com/entry/JavaScript-부동소수점-비교연산-floating-point-math)
```javascript
console.log(0.1 + 0.2);
// => 0.30000000000000004
// PHP에서 var_dump()하면 float(0.3) 나와서 되게 헷갈리는데 그나마 이건 그대로 출력해줘서 다행

console.log(0.1 + 0.2 == 0.3);
// => false

// 이런 함수로 비교해야 함
function isSame(a, b, epsilon) 
{
    if (!epsilon) epsilon = 0.000001;

    return Math.abs(a - b) < epsilon;
}

console.log(isSame(0.1+0.2, 0.3));
// 이건 true
```

## 결론

* javascript에서 실수 연산 조심하자.
* toFixed()를 사용하면 return 값이 string으로 나오니 주의하자.