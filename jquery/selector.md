# Selector

## jquery ui dialog 쓰다가 궁금한 점

```javascript
$( [] ) // <= 이건 뭘까?
```

## 해결
[Stack over flow - jquery selector syntax $( [] ) and $(“*”)](http://stackoverflow.com/questions/9059064/jquery-selector-syntax-and)

```javascript
allFields = $( [] ).add( name ).add( email ).add( password )
```
```javascript
allFields = $("#name,#email,#password")
```

## 결론

위 두 코드는 동일하게 동작한다.