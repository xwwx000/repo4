@echo off
set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"
"D:\mariadb-10.4.6-winx64\bin\mysqldump" -u root --password=cti mud> F:\backdatabase\mud_%Ymd%.sql
forfiles /p "F:\backdatabase" /s /m *.* /d -7 /c "cmd /c del @path"
@echo on