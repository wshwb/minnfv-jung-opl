%ʵ���
%ʱ��Ҫ���Ӱ��

[ha, pos] = tight_subplot(1,2,[.01 .15],[.2 .05],[.06 .02]);

%[ha, pos] = tight_subplot(��, ��, [���¼��,���Ҽ��],[�±߾�,�ϱ߾� ], [��߾�,�ұ߾� ])

x = [0 1 2 3 4];
%��Ծ�ڵ���
%y1_1 = [10 7 3 3 1];
%y1_2 = [10 7 3 3 2];
%y1_3 = [13 9 7 7 7];
%y1_3 = [15 15 14 13 11];
%y = [10 10 13;7 7 9; 3 3 7; 3 3 7; 1 2 7];

y1_0 = [109145 109145 0]/1000;
y1_1 = [110945 110945 122550]/1000;
y1_2 = [105210 105210 116415]/1000;
y1_3 = [91270 91270 115815]/1000;
y1_4 = [87935 91270 113080]/1000;
y1 = [y1_0;y1_1;y1_2;y1_3;y1_4];
axes(ha(1));
b = bar(y1);
grid on;
set(gca,'xticklabel',{'0','1','2','3','4'});
legend('p=100%','p=50%','p=15%');
xlabel('ʱ���ӳ�����');
ylabel('�ܺĿ���(KW)')


y2_0 = [275550 275550 295655]/1000;
y2_1 = [264345 264345 276215]/1000;
y2_2 = [251005 251005 276215]/1000;
y2_3 = [251005 251005 266745]/1000
y2_4 = [244335 248270 266745]/1000;
y2 = [y2_0;y2_1;y2_2;y2_3;y2_4];
axes(ha(2));
b = bar(y2);
grid on;
set(gca,'xticklabel',{'0','1','2','3','4'});
legend('p=100%','p=50%','p=15%');
xlabel('ʱ���ӳ�����');
ylabel('�ܺĿ���(KW)')