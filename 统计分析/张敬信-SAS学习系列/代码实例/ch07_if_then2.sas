data homeimprovements;
infile 'c:\MyRawData\Home.dat';
input Owner $ 1-7 Description $ 9-33 Cost;
if Cost =. then CostGroup = 'missing';
else if Cost < 2000 then CostGroup = 'low';
else if Cost < 10000 then CostGroup = 'medium';
else CostGroup = 'high';
run;
proc print data = homeimprovements;
title 'Home Improvement Cost Groups';
run;
