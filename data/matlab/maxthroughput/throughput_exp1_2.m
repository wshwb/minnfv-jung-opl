%ʵ��1����ͬ������������������Ӱ��
%x��Ϊ��������


[ha, pos] = tight_subplot(1,3,[.01 .07],[.2 .05],[.05 .03]);

%[ha, pos] = tight_subplot(��, ��, [���¼��,���Ҽ��],[�±߾�,�ϱ߾� ], [��߾�,�ұ߾� ])

%���������
x = [20 30 40 50 60 70 80 90 100];

%�������������
y1_1 = [20 29 32 34 36 39 40 42 43];
y1_2 = [20 24 26 27 27 29 28 27 28];

axes(ha(1));
plot(x,y1_1,'bo-',x,y1_2,'kx-')
legend('OPL','HEU'); legend boxoff
xlabel('��������');
ylabel('�������������');


y2_1 = [2.25 2.31 2.28 2.18 2.22 2.33 2.30 2.33 2.30] ./ [1.85 1.76 1.75 1.71 .167 1.72 1.68 1.69 1.70];
y2_2 = [2.70 2.71 2.54 2.48 2.44 2.48 2.53 2.52 2.50] ./ [1.85 1.86 1.92 1.89 1.89 1.83 1.96 1.96 1.96];


axes(ha(2));
plot(x,y2_1,'bo-',x,y2_2,'kx-')
legend('OPL','HEU'); legend boxoff  
xlabel('��������');
ylabel('ʱ�ӱ�');

y3_1 = [810 12764090 139170 206780 59990 106810 90400 655560 134920];
y3_2 = [570 683 760 828 900 970 1078 1139 1222];

axes(ha(3));
plot(x,y3_1,'bo-',x,y3_2,'kx-')
legend('OPL','HEU');   legend boxoff
xlabel('��������');
ylabel('���ʱ�䣨ms��');