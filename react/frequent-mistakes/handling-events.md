# Handling Events
Event Handler 함수 넘길 때 즉시 실행 주의

### Example 1
```js
handleClick = () => {
    console.log("Click");
}

<button onClick={this.handleClick}> // O
<button onClick={() => this.handleClick()}> // O
<button onClick={this.handleClick()}> // X - Click 안해도 함수가 즉시 실행됨.
```

### Example 2
```js
handleClick2 = (event) => {
    console.log(event.target.value);
}

<button onClick={(event) => this.handleClick2(event)}> // O
<button onClick={() => this.handleClick2()}> // X - event를 받지 못함.
```

## Reference
- [Facebook - React/Handling Events](https://facebook.github.io/react/docs/handling-events.html)