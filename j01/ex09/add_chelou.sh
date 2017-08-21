#I did it this way
echo $((`echo $FT_NBR1 | tr "'"'"''!''?''\' '02431' 2>/dev/null | xargs echo 'ob    ase=10;ibase=5;' | bc`+`echo $FT_NBR2 | tr 'mrdoc' '01234' 2>/dev/null | xargs e    cho 'obase=10;ibase=5;' | bc`)) | xargs echo 'obase=13;ibase=10;' | bc | tr '012    3456789ABC' 'gtaio luSnemf'

#BUT: it works for the first value of the exercice but doesn't work for the seconds values (that is suppose to give "segmentation fault"),
#the only reason I see is that the values in the exercice doesn't work and people who designed this exercice did a mistake...


#Explanation of my command: 

#b1 = ’\"?! = 1234
#b2 = mrdoc = 12345

#proposed values, LET COMMENTARY
#FT_NBR1=\'?"\"'\
#FT_NBR2=rcrdmddd

#affect proposed values
#FT_NBR1="\\""'"'?''"'"\\"'"'"'""\\"
#FT_NBR2='rcrdmddd'

#Other proposed values, LET COMMENTARY
#FT_NBR1=\"\"! \"\"! \"\"! \"\"! \"\"! \"\"
#FT_NBR2=dcrcmcmooododmrrrmorcmcrmomo

#affect other proposed values
#FT_NBR1="\\"'"'"\\"'"''!'"\\"'"'"\\"'"''!'"\\"'"'"\\"'"''!'"\\"'"'"\\"'"''!'"\\"'"'"\\"'"''!'"\\"'"'"\\"'"'
#FT_NBR2='dcrcmcmooododmrrrmorcmcrmomo'

#base one to base 5
b1_to_f()
{
    tr "'"'"''!''?''\' '02431' 2>/dev/null
}

#base 2 to base 5
b2_to_f()
{
    tr 'mrdoc' '01234' 2>/dev/null
}

#base 5 to base 10
f_to_ten()
{
    xargs echo 'obase=10;ibase=5;' | bc
}

#base 10 to base 13
ten_to_13()
{

    xargs echo 'obase=13;ibase=10;' | bc
}

#doing using functions
#nb1=`echo $FT_NBR1 | b1_to_f | f_to_ten`
#nb2=`echo $FT_NBR2 | b2_to_f | f_to_ten`
#nb3=`echo $(($nb1+$nb2)) | ten_to_13 | tr '0123456789ABC' 'gtaio luSnemf'`
#echo $nb3

#final command
echo $((`echo $FT_NBR1 | tr "'"'"''!''?''\' '02431' 2>/dev/null | xargs echo 'obase=10;ibase=5;' | bc`+`echo $FT_NBR2 | tr 'mrdoc' '01234' 2>/dev/null | xargs echo 'obase=10;ibase=5;' | bc`)) | xargs echo 'obase=13;ibase=10;' | bc | tr '0123456789ABC' 'gtaio luSnemf' 
