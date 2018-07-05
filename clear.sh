
#! /bin/bash
ls_date=`date +%Y%m%d`

./mysqld.sh > $ls_date".sql"


cd test.payzbank.com
for txt in `ls log* lg*`
do
    echo "" > $txt
done
echo "clear file done.."

cd Application/Runtime/Logs
for file in `ls`
do
    cd $file
    rm -rf *
    cd ..
done
echo "clear log done..."

cd /home/wwwroot/
tar -zcvf $ls_date".tar.gz" pay.payzbank.com
pwd
