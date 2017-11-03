
day1=`date +%s`
airac=`expr $day1 / 60 / 60 / 24 % 28`
if [ $airac = 6 ]; then
    echo "今日はエアラック日です"
else
    if [ $airac -gt 6 ]; then
	next=`expr 28 - $airac + 6`
	echo "次のエアラック日は" $next "日後"
	echo `date --date "$next day"`
    else
	next=`expr 6 - $airac + 1`
	echo "次のエアラック日は" $next "日後"
	echo `date --date "$next day"`
    fi
	  
fi
