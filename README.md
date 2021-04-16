# convert adventureworks into 'mysql and postgresql'

### 导出 mysql 数据


### 将adventureworks导入adventureworks

1、在postgresql 中新建数据库
create database adventureworks;

2、导入数据库
psql -U postgres -d adventureworks -f "Path/adventureworks.sql"
