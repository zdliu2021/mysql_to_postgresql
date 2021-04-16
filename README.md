# convert adventureworks into 'mysql and postgresql'

### 下载数据
链接: https://pan.baidu.com/s/1U23Kd_ZrUkL1uZXDTQ8BRg 提取码: yj4e 复制这段内容后打开百度网盘手机App，操作更方便哦


### 导出 mysql 数据


### 将adventureworks导入adventureworks

1、在postgresql 中新建数据库
create database adventureworks;

2、导入数据库
psql -U postgres -d adventureworks -f "Path/adventureworks_postgresql.sql"
