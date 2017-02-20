# redux

## 알게된 점

### export

이거는 되는데
```js
export default reducer = combineReducers({
  todoApp
});
```
이거는 안된다. export default const는 안되는가??
```js
export default const reducer = combineReducers({
  todoApp
});
```