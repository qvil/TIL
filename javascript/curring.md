# Curring

## 정의
>수학자 하스켈 커리(Haskell Curry)로부터 유래됨.

## 예제
```js
function add(x, y) {
    if (typeof y === "undefined") {
        return function (y) {
            return x + y;
        }
    }

    return x + y;
}
```

## 실행
```js
add(2, 3); // 5
add(2)(3); // 5
```