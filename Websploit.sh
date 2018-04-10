#!/bin/bash
clear
echo "																			"
echo " __       __            __         ______                                	"
echo "/  |  _  /  |          /  |       /      \                                "
echo "$$ | / \ $$ |  ______  $$ |____  /$$$$$$  |  _______   ______   _______   "
echo "$$ |/$  \$$ | /      \ $$      \ $$ \__$$/  /       | /      \ /       \  "
echo "$$ /$$$  $$ |/$$$$$$  |$$$$$$$  |$$      \ /$$$$$$$/  $$$$$$  |$$$$$$$  | "
echo "$$ $$/$$ $$ |$$    $$ |$$ |  $$ | $$$$$$  |$$ |       /    $$ |$$ |  $$ | "
echo "$$$$/  $$$$ |$$$$$$$$/ $$ |__$$ |/  \__$$ |$$ \_____ /$$$$$$$ |$$ |  $$ | "
echo "$$$/    $$$ |$$       |$$    $$/ $$    $$/ $$       |$$    $$ |$$ |  $$ | "
echo "$$/      $$/  $$$$$$$/ $$$$$$$/   $$$$$$/   $$$$$$$/  $$$$$$$/ $$/   $$/  "
echo "                                                                         	"
                                                                          
echo
echo                              "++++++++++++++++++++++++++"
echo                              "|  Vulnerability Scanner |" 
echo                              "++++++++++++++++++++++++++"

echo "1. Sql Injection Dector"
echo "2. Xss vulnerability "
read -p "Option > " opt
case $opt in 
	1)	clear
		python2 sql.py

		;;


	2) clear 
	   python xss.py

		;;
		
esac