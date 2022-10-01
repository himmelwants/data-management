0. 데이터베이스 삭제 (필요시)
mysql>drop database 디비이름;

# 컨테이너 터미널 접속
# mysql --version 
# service mysql start
# mysql -u root -p -> 루트유저 비밀번호 생성 (root 비번 0000)
mysql> show databases;

# 유저생성하기(컨테이너 sql1, 유저명 han, 비번 3646)
1.ynydb 라는 이름으로 데이터베이스를 생성하였습니다.
mysql> CREATE DATABASE 디비명; (hmhdb)

2.해당 DATABASE 를 사용하는 계정을 생성해야 합니다.
예를 들어, 아이디와 비밀번호 생성한다면 다음과 같이 실행합니다.

mysql> CREATE USER '유저명'@'%' IDENTIFIED BY '비밀번호'; (hmh 3646)

3.생성한 계정에 권한을 부여합니다.
mysql> GRANT ALL PRIVILEGES ON 디비명.* TO 'ynyuser'@'%';

4. 권한 부여 내용 메모리에 반영하기
mysql> flush privileges;

5. 권한이 잘 부여되었는지 확인하기
mysql> show grants for '유저명'@'%';

6. 생성유저로 재접속
mysql> exit
mysql> mysql -u 유저명 -p

# 포트포워딩
상단 메뉴에서 [컨테이너] → [포트포워딩 설정]을 클릭하세요.
유형을 MySQL 선택한  [등록] 버튼을 클릭하세요.

외부접속 셋팅값 수정(터미널 모드에서)
# cd /etc/mysql/mysql.conf.d
#ls
# vi mysqld.cnf
1. 44행으로 이동(방향키로)
2. i 입력(insert) 다음에 주석처리 ()
3. esc 키 눌러서 빠져나오기
4. :wq 입력(저장하고 나오기)
5. service mysql restart
5. 포트포워딩 설정값 복사
6.toad 커넥션

유저 확인
mysql> use mysql;
select user, host from user;

교수님 ph 010-8382-6140