data electricity;
infile 'c:\MyRawData\Hourly.dat';
input Time kWh @@;
run;
* Plot temperatures by time;
proc sgplot data = electricity;
series X = Time Y = kWh / MARKERS;
REFLINE 0.5 / LABEL = ('0.5 kWh') TRANSPARENCY = 0.5;
xaxis values = (0 TO 24 BY 1);
yaxis label = 'Electricity (kWh)';
title 'Hourly Use of Electricity';
run;
