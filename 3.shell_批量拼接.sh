#!/bin/bash

#目录下指定后缀的文件个数
function file_count {

    count=0;
    for c in `ls $1/*.PNG`
    do
        let count=$count+1
    done
    
    return $count
}

TARGET_DIR='gitignore'

for i in `ls $TARGET_DIR`
do

    file_count $TARGET_DIR/$i
    ret=$?
    echo "$i : $ret"

    #配置Config.ini文件
    echo -e "[SYSTEM]\nnum = $ret\nrow = $ret\ncol = 1" > ./PNG拼图软件/Config.ini
    
    #清空文件
    rm ./PNG拼图软件/in/* -f
    
    #移动文件
    cp $TARGET_DIR/$i/*.PNG ./PNG拼图软件/in
    
    #执行程序,该工具需在当前目录下执行
    cd ./PNG拼图软件
    ./一键拼图.exe
    cd -
    
    #更改文件名
    mv ./PNG拼图软件/out/1.png ./PNG拼图软件/out/readme_$i.png
done



