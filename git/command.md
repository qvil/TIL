# Command

## 브랜치에서 특정파일 patch

특정 branch에서 특정 파일 혹은 폴더만 Update하고 싶을 때

```shell
$ git checkout --patch {bracnh} {file or folder}
```

## 로컬 브랜치 삭제

```shell
$ git branch -d {branch_name} # merge 후 쓸모없는 브랜치만 삭제됨
$ git branch -D {branch_name} # 강제로 삭제 가능
```

## 원격 브랜치 삭제

**checkout 안하고 해도 됨.**
```shell
$ git push --delete {remote} {branch}
```

원격 브랜치를 로컬로 checkout한 후 원격브랜치에서 체크아웃한 로컬브랜치를 아래 명령어로 삭제하면 된다.

```shell
$ git co {branch_name} origin/{branch_name}
$ git push origin --delete {branch_name}
```

## 리모트 저장소 추가

원하는 디렉토리에서 git init 후

```shell
$ git remote add origin {remote_name}
$ git fetch # 리모트 저장소의 파일, 브랜치 등을 가져온다.
```

## tag 

tag 추가 후 `git push {remote} {tag}`

### Annotated tag

```shell
$ git tag -a v1.4 -m 'my version 1.4'
```

### Lightweight tag

```shell
$ git tag v1.4-lw
```