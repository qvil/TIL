# VS CODE(Visual Studio Code)
역시 MS인가 Type Script도 배워보고 싶을 정도로 VSCode는 정말 굉장하다..

## Extensions
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
			"console.log('$1');",
			"$2"
		],
		"description": "Log output to console"
	},
	"TS Console Log": {
		"prefix": "tlg",
		"body": [
			"console.log('[TS_LOG] $1 : ' + $1);",
			"$2"
		],
		"description": "Log output to console"
	}
}
```