# MySQL Install

>mac sierra 10.12.3

>mysql 5.7

## Install
```bash
brew install mysql # brew가 편함
```
## root 비밀번호 변경

[제타위키참고](http://zetawiki.com/wiki/MySQL_root_패스워드_분실)

### mysql 콘솔 접속
```
/usr/bin/mysql -uroot mysql
```
mac
```
/usr/local/opt/mysql/bin/mysql -uroot mysql
```

### 5.7 버전 미만
>UPDATE mysql.user SET password=PASSWORD('패스워드') WHERE user='root'; 
>FLUSH PRIVILEGES; 
>quit
### 5.7 버전 이상
>UPDATE mysql.user SET authentication_string=PASSWORD('패스워드') WHERE user='root'; 
>FLUSH PRIVILEGES;
>quit
