data  Bacterial;
infile 'C:\MyRawData\bacterial.txt';
input BacterialClass $ Number;
run;
* Bar chart for Bacterial;
proc gchart data = Bacterial;
pie BacterialClass / sumvar = Number PERCENT = arraw;
label BacterialClass = '细菌类别' Number = '例数';
title '400 例细菌培养结果';
run;
