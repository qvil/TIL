# form

## submit

### 요약
```
event.preventDefault()로 form refresh 막고 데이터만 처리하는 Code임.
```

### 상세(삽질)
- 단 하나의 input만 존재할 경우 Enter키로도 submit이 된다. (Button type="{submit, button}" 상관 없이 된다. 차이점은?)
- 그렇다면 Enter키로 onSubmit Method를 실행하는 것과 Method Binding을 통해서 form.submit()의 차이는?
  + 아래 코드를 실행하면 버튼을 누르면 onSubmit -> from.submit()은 page refresh가 되고 Enter키를 이용하면 Refresh없이 console.log()만 실행된다.
  + 혹시 ref참조라서??
    * name값 주고 document.form.submit() // Refresh
    * id값 주고 document.getElementById('form').submit() // Refresh
    * **e.preventDefault()로 막으면 위에 코드도 다 된다.. 결론 : 삽질**

```jsx
onSubmit = () => {
        form.submit();
    }

render() {
        let input;

        return (
            <form ref={node => { form = node }}
                onSubmit={e => {
                e.preventDefault();
                if (!input.value.trim()) {
                    return;
                }
                console.log("[TS_LOG] input.value : " + input.value);
                input.value = '';
            }}>
                <input ref={node => {
                    input = node;
                }}/>
                {/* <button type="submit">Add</button> */}
                <button type="button"
                        onClick={this.onSubmit}>Add</button>
            </form>
        );
    }
```