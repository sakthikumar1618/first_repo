#!/bin/bash
read -p " enter the dept [IMS,FS,DEVOPS]:" course
case $course in
 IMS|ims) 
    echo "CCNA, RHCSA, AWS "
    ;;
    FS|fs)
    echo "Mysql, JavaScript, HTML,Css " 
    ;;
    DEVOPS|devops)
    echo "python, ansible, docker"
    ;;

    *)

    echo " choose a proper dept "
    esac
