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
### ref
```js
const AddTodo = ({ dispatch }) => {
  let input;
  let text;

  handleAddTodo = () => {
    console.log("[TS_LOG] text : " + text);
  }

  return(
    <View>
      <TextInput
        style={{width: 100, height: 30, borderWidth: 1}}
        ref={node => { input = node }}
        onChangeText={value => { text = value }} // 정상동작
        // onChangeText={text => { text = text }} // ref callback argument랑 변수 이름 같으면 참조 못하는 듯
```