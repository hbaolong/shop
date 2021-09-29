rm -rfv 订单.txt

for files in `cat 我的订单.txt`
do  
	if  grep -w $files 出版社提供的物流.txt;
		then 
		grep -w $files  出版社提供的物流.txt  | head -n 1 >>订单.txt; 
	else
		echo $files " " >>订单.txt; 
	fi

done
