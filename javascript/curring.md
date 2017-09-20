# Curring

## Definition
>수학자 하스켈 커리(Haskell Curry)로부터 유래됨.

## Example

### ES6
```js
const add = x => y => x + y;
```

### ES5
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

## Execution
```js
add(2)(3); // 5
add(2)(3); // 5
```