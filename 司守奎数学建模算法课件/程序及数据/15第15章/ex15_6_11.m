clc,clear
x1=[3.3	3.4	2.4	3.1	15	5.5	8.5	2.7	2.3	3.5	1.8	9.5	2.15	1.44	12	5.75	1.95	6.5	3.25	2.55	2.75	1.79	1.73	5	3.3	3.25	2.01	15	3.1	3.6	5	3.5	1.4	3.75	1.7	8	3.1	6.5	17	4.2	15	1.18	1.14	2.45	1.4	3.75	3	2.5	3.75	1.33	1.45	1.57	5.5	1.11	7	1.45	1.33	1.55	1.02	1.22	3.3	2.8	3	1.73	1.8	1.67	1.67	3.1	3.75	1.83	3	1.73	1.73	1.57	1.36	2	1.57	1.5];
x2=[3.4	3.3	3.3	3.4	9	3.8	4.75	3.3	2.9	4.2	3.9	4	3.6	4.2	7	3.8	3.6	3.6	3.6	3.1	3.4	3.86	3.6	4.2	3.43	3.4	3.45	8	3.5	3.8	3.8	3.6	4	3.4	3.5	4.5	3.2	4	8.5	3.75	7	7	7	3.25	4.5	3.6	3.3	3.25	3.3	4.75	4.75	4	3.6	9	4.5	4	5.25	4	19	5.75	3.3	3	3.25	3.5	3.6	4	4	3.75	3.3	3.4	3.5	3.75	5	3.5	4	4.33];
x3=[2.15	2.15	2.88	2.25	1.12	1.62	1.36	2.55	3.5	1.85	4	1.4	3.1	7.5	1.2	1.6	3.6	1.57	2.1	2.9	2.5	4.82	4.75	1.62	2.33	2.15	4.23	1.14	2.2	1.91	1.65	2	9.5	2	4.5	1.4	2.3	1.53	1.13	1.8	1.17	13	23	2.88	7.5	1.95	2.38	2.8	2	10	6	5.5	1.65	15	1.36	8	8	6	41	13	2.2	2.7	2.38	5	4.33	4.75	4.75	2.1	2	4.5	2.2	6	7.5	3.6	5.5	6];
y=[0.333333333	0.5	1.333333333	0.666666667	0.333333333	0	0.2	2	0	5	1	0.333	1.5	1	0.4	0.333333333	0.5	0.33	2	0.5	2	1	0	0.333333333	0	1	2	0.5	1	0.33	3	10	10	1	2	0.2	0	1	0	0.5	0	2	10	1	3	0	10	0	0.2	4	1	2	0	10	0	1	0.5	1	10	20	0.667	10	0.33	10	2	1	5	1	1	10	1	0	1	10	10	0	0.25	1.33]';
x=[x1' x2' x3'];
      rstool(x,y,'purequadratic')
