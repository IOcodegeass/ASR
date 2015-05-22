while read line           
do           
    echo `mkdir  ../wav/dr8/$line`
    echo  `mkdir ../mfcc/dr8/$line`		            
done < out8.txt
