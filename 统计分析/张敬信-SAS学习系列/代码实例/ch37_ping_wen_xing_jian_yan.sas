data RawData;
input Year Qtr x y;
datalines;
1987 4 -0.05294 0.067891
1988 1 -0.14696 0.063533
1988 2 -0.12600 0.065794
1988 3 -0.14656 0.060760
1988 4 -0.06056 0.062053
1989 1 -0.02644 0.057527
1989 2 -0.05778 0.049068
1989 3 0.01924 0.061497
1989 4 -0.10823 0.060421
1990 1 -0.04056 0.050771
1990 2 -0.03390 0.036702
1990 3 -0.06903 0.016959
1990 4 0.07547 0.002585
;
run;
data TimeSeries;
set RawData;
x_1st_LAG = LAG1(x);
x_1st_DIFF = DIF1(x);
x_1st_DIFF_1st_LAG = DIF1(LAG1(x));
x_1st_DIFF_2nd_LAG = DIF1(LAG2(x));
x_1st_DIFF_3rd_LAG = DIF1(LAG3(x));
x_1st_DIFF_4th_LAG = DIF1(LAG4(x));
x_1st_DIFF_5th_LAG = DIF1(LAG5(x));
run;
proc reg data = TimeSeries;
model x_1st_DIFF = x_1st_LAG 
x_1st_DIFF_1st_LAG 
x_1st_DIFF_2nd_LAG 
x_1st_DIFF_3rd_LAG 
x_1st_DIFF_4th_LAG 
x_1st_DIFF_5th_LAG;
run;
