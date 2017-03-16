# Callback

## 이슈

```javascript
buttons: [
            {
                text: "Confirm",
                click: confirmAction(); // click 할 때가 아니라 loading시에 바로 실행 됨.
            },
```

## 해결

```javascript
buttons: [
            {
                text: "Confirm",
                click: function() {
                    confirmAction(); // click 할 때 실행 됨.
                }
            },
```

## 결론

Callback 패턴으로 부르지 않으면 해당 라인에서 그냥 실행되어 버리고 callback에 등록하면 call이 오는 순간까지 기다림.