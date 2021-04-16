# adventureworks in mysql and postgresql

### 导出 mysql 数据
mysql -uuser -ppassword  adventureworks -e "select * from `humanresources.department`;" | sed 's/\t/","/g;s/^/"/;s/$/"/;s/\n//g' > department.csv


mysql -uroot -plzd57460lxr  adventureworks -e "select * from `humanresources.employee`;" | sed 's/\t/","/g;s/^/"/;s/$/"/;s/\n//g' > employee.csv



### 导入数据
\copy "humanresources.employee" from '/home/lzd/employee.csv' with csv header encoding 'utf8';
