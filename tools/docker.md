# Docker

* 복잡한 빌드환경을 저장해서 OS 환경 구분없이 사용하게 해주는 프로그램
* Test환경 macOS Sierra 10.12.3 

## 명령어

### 상태확인

```shell
$ docker ps
$ docker ps -a
$ docker images
```

### Import

```shell
$ # docker import {경로} {docker이름}:{docker태그}
$ docker import /Users/qvil/Desktop/gct_build_with_jenkins_setting_v6.tar gct_build:v6_test
```

### Run

```shell
# restart=always 컴퓨터 재시작 할 때마다 자동으로 실행됨.
$ docker run -d -p 20022:22 -p 8080:8080 -p 20138:138/udp -p 20139:139 -p 20445:445 -p 20445:445/udp --restart=always --name local_build gct_build:v6_test /root/init_seowon.sh
```

### Start, Restart

```shell
$ docker start local_build_test
$ docker restart local_build_test
```

### Kill, Remove

```shell
$ docker kill local_build
$ docker rm -f local_build_test
$ docker rmi ba160e55dd9f
```

### Export

```shell
$ docker export -o gct_build_with_webdav_v7.tar local_build
```

### Search

```shell
$ docker search ubuntu
$ docker search nodes
```
