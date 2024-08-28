proc format;
value sexname 1 = 'male' 
              2 = 'female';
data child;
do i=1 to 15;
  do sex=1 to 2;
    input x1 x2 y @@;
    format sex sexname.;
    output;
  end;
end;
datalines;
54.0 3.00 2446.2   54.0 3.00 2117.3
50.5 2.25 1928.4   53.0 2.25 2200.2
51.0 2.50 2094.5   51.5 2.50 1906.2
56.5 3.50 2506.7   51.0 3.00 1850.3
52.0 3.00 2121.0   51.0 3.00 1632.5
76.0 9.50 3845.9   77.0 7.50 3934.0
80.0 9.00 4380.8   77.0 10.0 4180.4
74.0 9.50 4314.2   77.0 9.50 4246.1
80.0 9.00 4078.4   74.0 9.00 3358.8
76.0 8.00 4134.5   73.0 7.50 3809.7
96.0 13.5 5830.2   91.0 12.0 5358.4
97.0 14.0 6013.6   91.0 13.0 5601.7
99.0 16.0 6410.6   94.0 15.0 6074.9
92.0 11.0 5283.3   92.0 12.0 5299.4
94.0 15.0 6101.6   91.0 12.5 5291.5
;
proc glm data = child;
class sex;
model y=sex x1 x2 /solution;
lsmeans sex /stderr tdiff;
run;
