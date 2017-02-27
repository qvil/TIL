# Alias

~/.gitconfig 파일을 수정하면 컴퓨터 전체의 git에 적용됨 (~/ ⇐ HomeDirectory)

아래 코드를 .gitconfig에 붙여 넣는다. 

```
[alias]
lg1 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all
lg2 = log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all
lg = !"git lg1 -10"

co = checkout
br = branch
ci = commit
st = status
unstage = reset HEAD --
last = log -1 HEAD
[user]
        email = qvil1127@gmail.com
        name = tshyeon
```

```
git lg 의 -10옵션 10줄 
git lg1 또는 lg2로 log명령을 대신한다.
git co 로 checkout명령을 대신한다.
git br 로 branch명령을 대신한다.
git ci 로 commit명령을 대신한다.
git st 로 status명령을 대신한다.
git unstage 로 reset HEAD –명령을 대신한다.
git last 로 log -1 HEAD명령을 대신한다.
```