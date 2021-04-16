# convert adventureworks into 'mysql and postgresql'

### 下载数据
链接: https://pan.baidu.com/s/1U23Kd_ZrUkL1uZXDTQ8BRg 提取码: yj4e 复制这段内容后打开百度网盘手机App，操作更方便哦

链接: https://pan.baidu.com/s/1JEe5XQt3OXO7W6JsglK9-A 提取码: euap 复制这段内容后打开百度网盘手机App，操作更方便哦

### 将adventureworks导入mysql
1. mysql -u root -p
2. create database adventureworks;
3. use adventureworks;
4. source /path/adventureworks_mysql.sql

### 将adventureworks导入postgresql

1、在postgresql 中新建数据库
create database adventureworks;

2、导入数据库
psql -U postgres -d adventureworks -f "Path/adventureworks_postgresql.sql"
