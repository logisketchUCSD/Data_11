clear
node = [-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
0.5	0.17	0.33	0.5	0.67	0.33	0.67	0.83	0.33	0.33	0.67	0.33	0.67	1	0.33	0.33	;
0.5	0	0.33	0.5	0.67	0.33	0.67	0.83	0.33	0.33	0.67	0.33	0.67	1	0.33	0.33	;
0.32	1	1	1	0.95	0.47	0.84	0.84	0.84	0.84	0.95	0.84	0.89	0.95	0.95	0.84	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	1	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
1	1	1	1	1	0.75	1	1	1	1	1	0.75	1	1	1	1	;
0.47	0.8	0.93	0.87	0.8	0.47	0.87	0.87	0.67	0.8	0.8	0.8	1	0.93	0.8	0.8	;
1	0.8	0.8	1	1	0.8	0.8	1	0.8	1	1	0.8	0.8	0.8	0.8	1	;
];

link = [0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
0.36	0.57	0.64	0.43	0.43	0.57	0.5	0.57	0.36	0.36	0.43	0.07	0.29	0.43	0.36	0.36	;
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	-1	;
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	;
];

maxClique = [3	4	7	9	13	3	4	7	9	13	14	3	4	7	9	13];
distThresh = [10	10	10	14	25	10	10	10	14	25	40	10	10	10	14	25];
timeThresh = [100	400	600	10	100	100	400	600	10	100	100	100	400	600	10	100];

leg = {'0','1','2','3','4','5','6','7','8', '9', '10', '11', '12', '13'};

figure(1)
plot(maxClique(1:5), node(:,1:5))
title('Vary training, constant running Node')
xlabel('max clique size of Aaron file')
ylabel('Node accuracy')
legend(leg)

figure(2)
plot(maxClique(1:5), link(:,1:5))
title('Vary training, constant running Link')
xlabel('max clique size of Aaron file')
ylabel('Link accuracy')
legend(leg)

figure(3)
plot(maxClique(6:11), node(:,6:11))
title('Vary running, constant training Node')
xlabel('max clique size of Aaron file')
ylabel('Node accuracy')
legend(leg)

figure(4)
plot(maxClique(6:11), link(:,6:11))
title('Vary running, constant training Link')
xlabel('max clique size of Aaron file')
ylabel('Link accuracy')
legend(leg)

figure(5)
plot(maxClique(12:16), node(:,12:16))
title('Vary training and running')
xlabel('max clique size of Aaron file')
ylabel('Node accuracy')
legend(leg)

figure(6)
plot(maxClique(12:16), link(:,12:16))
title('Vary training and running')
xlabel('max clique size of Aaron file')
ylabel('Link accuracy')
legend(leg)

%% Time Threshold

figure(7)
plot(timeThresh(1:5), node(:,1:5))
title('Vary training, constant running Node')
xlabel('time threshold')
ylabel('Node accuracy')
legend(leg)

figure(8)
plot(timeThresh(1:5), link(:,1:5))
title('Vary training, constant running Link')
xlabel('time threshold')
ylabel('Link accuracy')
legend(leg)

figure(9)
plot(timeThresh(6:11), node(:,6:11))
title('Vary running, constant training Node')
xlabel('time threshold')
ylabel('Node accuracy')
legend(leg)

figure(10)
plot(timeThresh(6:11), link(:,6:11))
title('Vary running, constant training Link')
xlabel('time threshold')
ylabel('Link accuracy')
legend(leg)

figure(11)
plot(timeThresh(12:16), node(:,12:16))
title('Vary training and running')
xlabel('time threshold')
ylabel('Node accuracy')
legend(leg)

figure(12)
plot(timeThresh(12:16), link(:,12:16))
title('Vary training and running')
xlabel('time threshold')
ylabel('Link accuracy')
legend(leg)

%% Distance Threshold

figure(13)
plot(distThresh(1:5), node(:,1:5))
title('Vary training, constant running Node')
xlabel('distance threshold')
ylabel('Node accuracy')
legend(leg)

figure(14)
plot(distThresh(1:5), link(:,1:5))
title('Vary training, constant running Link')
xlabel('distance threshold')
ylabel('Link accuracy')
legend(leg)

figure(15)
plot(distThresh(6:11), node(:,6:11))
title('Vary running, constant training Node')
xlabel('distance threshold')
ylabel('Node accuracy')
legend(leg)

figure(16)
plot(distThresh(6:11), link(:,6:11))
title('Vary running, constant training Link')
xlabel('distance threshold')
ylabel('Link accuracy')
legend(leg)

figure(17)
plot(distThresh(12:16), node(:,12:16))
title('Vary training and running')
xlabel('distance threshold')
ylabel('Node accuracy')
legend(leg)

figure(18)
plot(distThresh(12:16), link(:,12:16))
title('Vary training and running')
xlabel('distance threshold')
ylabel('Link accuracy')
legend(leg)
