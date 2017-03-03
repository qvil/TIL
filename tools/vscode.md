# VS CODE(Visual Studio Code)
[Issue](https://github.com/qvil/TIL/blob/master/tools/vscode.md#issue)

## 단축키
- F12 // Go To Declaration 선언한 곳으로 찾아가줌. ctags 처럼도 이용 가능(C/C++ 확장프로그램 설치)
- Shift + F12 // 모든 참조 찾기
- Alt + F12 // Picking Definition 은 왜쓰는지 모르겠네 Shift 가 나은거 같은데
- Alt + <- // 이전에 보던 라인, undo랑 비슷
- Alt + -> // 다음에 본 라인, redo랑 비슷

## 설정

### 꾸미기

- 파일
  + 기본설정 
    * 색 테마 - monokai
    * 파일 아이콘 테마 - **vscode-icons**, file icons

### 로컬  vscode powershell에서 서버의 코드를 github에 ssh로 push하기
[github username, password 없이 ssh key로 push하기](https://github.com/qvil/TIL/blob/master/git/ssh.md#github-username-password-없이-ssh-key로-push하기)
```
로컬pc ssh-keygen 하여 github에 등록한 뒤 push
```


## Extensions
**Settings Sync** // 모든 셋팅, 확장프로그램을 여러 장치에서 같은 셋팅으로 쓰게 해준다 꼭 깔자!!

***

* Atom Keymap // Awesome!!! atom -> vscode
* Reactjs code snippets // 설명이 필요있나 rcc tab!
* View In Browser // Ctrl + F1
* Debugger for Chrome // line number 옆에 클릭하면 debug break point
* Project Manager // F1 -> project * //list = shift+alt+p
* HTML
  * HTML Snippets
  * HTML CSS Class Completion
* jshint
* ESLint
* Git History // F1 -> View History(git log)

## Own Snippets(파일->기본설정->사용자 코드조각)

### JavaScript
```json
{
	"Print to console": {
		"prefix": "log",
		"body": [
			"console.log('$1');"
		],
		"description": "Log output to console"
	},
	"TS Console Log": {
		"prefix": "tlg",
		"body": [
			"console.log('[TS_LOG] $1 : ' + $1);"
		],
		"description": "Log output to console"
	},
	"[React-Native]Stateless Component": {
		"prefix": "rnsc",
		"body": [
			"import { View } from 'react-native';",
			"",
			"const ${1:MyComponent} = () => (",
			"	<View></View>",
			");",
			"",
			"export default ${1:MyComponent};"
		],
		"description": "[React-Native]Stateless Component"
	},
	"[React-Native]Class": {
		"prefix": "rnc",
		"body": [
			"import React, { Component } from 'react';",
			"import { Text } from 'react-native';",
			"",
			"class ${1:MyComponent} extends Component {",
			"	constructor(props) {",
			"	super(props);",
			"	}",
			"",
			"	render() {",
			"		return(",
			"			<Text>${1:MyComponent}</Text>",
			"		);",
			"	}",
			"}",
			"",
			"export default ${1:MyComponent};"
		],
		"description": "[React-Native]Class Component"
	}
}
```

## Issue
- Settings Sync - Download 안될 때 : sync -> Advanced option -> Share Settings With Public GIST -> GIST를 다른 장치에서 사용(임시)
