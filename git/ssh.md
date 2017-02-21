# SSH

## github username, password 없이 ssh key로 push하기

### SSH Key 생성
```shell
ssh-keygen -t rsa -b 4096 -C "{email}" # github manual
ssh-keygen # 이것도 되는 것 확인.
```
passphrase 입력 안하고 enter하면 push 할 때 마다 비밀번호 입력 안해도 됨.
```
Enter a file in which to save the key (/Users/you/.ssh/id_rsa): [Press enter]
Enter passphrase (empty for no passphrase): [Type a passphrase]
Enter same passphrase again: [Type passphrase again]
```

### github에 sshkey 등록
```
id_rsa.pub 값을 github 관리자에게 전달하거나 본인이 등록
github페이지의 Settings -> SSH Key -> New SSH Key -> Key 항목에 id_rsa.pub 값 복사
```

### github remote 저장소에 ssh 사용 url add하거나 clone
git@github.com:{id}/{project}.git
```shell
git remote add {name} git@github.com:{id}/{project}.git
git clone git@github.com:{id}/{project}.git
```

### 참고
```
https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
```