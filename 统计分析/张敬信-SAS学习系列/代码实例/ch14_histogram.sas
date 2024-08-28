data contest;
infile 'c:\MyRawData\Reading.dat';
input Name $ NumberBooks @@;
run;
* Create histogram and density curves;
proc sgplot data = contest;
histogram NumberBooks / BINWIDTH = 2 SCALE = COUNT;
density NumberBooks;
density NumberBooks / type = KERNEL;
title 'Reading Contest';
run;
