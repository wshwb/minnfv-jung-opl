%实验1.1：不同资源配置下的OPEX
%topo：pdh18-int1
%x轴为资源配置p


[ha, pos] = tight_subplot(1,3,[.01 .07],[.2 .05],[.05 .03]);

%[ha, pos] = tight_subplot(行, 列, [上下间距,左右间距],[下边距,上边距 ], [左边距,右边距 ])

x1_1 = [20 18 15 10 8 6 5 4 3 2] / 20 * 100;
y1_1 = [1.0 1.0 2.0 2.0 3.0 3.0 4.0 5.1 6.2 9.4];

%1.0 1.1
x1_2 = [20 18 15 13 11 10 9 8 7 6 5 4 3 2] / 20 * 100;
y1_2 = [4.3 4.3 4.3 4.3 4.3 4.3 4.3 4.3 4.3 5.3 6.3 8.4 8.5 11.7]
y1_3 = [1.0 2.1 2.1 2.1 2.1 3.2 3.2 3.2 4.3 4.2 5.2 6.3 7.4 10.6];
y1_4 = [1.0 2.0 2.0 2.0 2.0 3.0 3.0 3.0 4.0 4.1 5.1 6.2 7.3 10.6];

%1.0 2.0
y1_1_1 = (y1_1 - floor(y1_1)) * 10 * 2 +  (floor(y1_1) - (y1_1 - floor(y1_1))) 
y1_2_1 = (y1_2 - floor(y1_2)) * 10 * 2 +  (floor(y1_2) - (y1_2 - floor(y1_2))) 
y1_3_1 = (y1_3 - floor(y1_3)) * 10 * 2 +  (floor(y1_3) - (y1_3 - floor(y1_3))) 
y1_4_1 = (y1_4 - floor(y1_4)) * 10 * 2 +  (floor(y1_4) - (y1_4 - floor(y1_4)))



axes(ha(1));
plot(x1_1,y1_1_1,'bd-',x1_2,y1_2_1,'co-',x1_2,y1_3_1,'m>-',x1_2,y1_4_1,'r*-')
legend('MILP','HEU','HEU+','GA'); legend boxoff
xlabel('节点资源配比(p-%)');
ylabel('部署成本');
set(gca,'XDir','reverse');



aPM = 80.5;
aVM = 165.9;
x2_1 = [20 18 15 10 8 6 5 4 3 2] / 20 ;
y2_1 = [1 1 2 2 3 3 4 5 6 9] * aPM .* x2_1 + [18 18 18 18 18 18 18 18 18 18] * aVM;

x2_2 = [20 18 15 13 11 10 9 8 7 6 5 4 3 2] / 20 ;
y2_2 = [4 4 4 4 4 4 4 4 4 5 6 8 8 11] * aPM .* x2_2 + [20 20 20 20 20 20 20 20 21 22 23 23 21 21] * aVM;
y2_3 = [1 2 2 2 2 3 3 3 4 4 5 6 7 10] * aPM .* x2_2 + [18 20 20 21 21 21 22 21 20 22 22 21 20 20] * aVM;
y2_4 = [1 2 2 2 2 3 3 3 4 4 5 6 7 10] * aPM .* x2_2 + [18 18 18 18 18 20 20 19 20 20 21 21 19 19] * aVM;

axes(ha(2));
plot(x2_1*100,y2_1/1000,'bd-',x2_2*100,y2_2/1000,'co-',x2_2*100,y2_3/1000,'m>-',x2_2*100,y2_4/1000,'r*-')
legend('MILP','HEU','HEU+','GA'); legend boxoff  
xlabel('节点资源配比(p-%)');
ylabel('能耗成本(KW)');
set(gca,'XDir','reverse');

x3_1 = [20 18 15 10 8 6 5 4 3 2] / 20 * 100;
y3_1 = [2.0 2.0 1.67 1.67 1.67 1.78 1.67 1.67 2.06 2.89] / 1.67

x3_2 = [20 18 15 13 11 10 9 8 7 6 5 4 3 2] / 20 * 100;
y3_2 = [2.22 2.22 2.22 2.22 2.22 2.22 2.22 2.22 2.22 2.28 2.50 2.44 2.55 3.0] / 1.67
y3_3 = [2.0 1.83 1.83 1.89 2.17 1.94 2.06 2.17 2.22 2.78 3.0 2.89 2.78 3.27] / 1.67
y3_4 = [2.0 1.89 1.89 1.89 2.22 2.00 2.28 2.24 2.00 2.56 2.22 2.50 2.67 3.27] / 1.67


axes(ha(3));
plot(x3_1,y3_1,'bd-',x3_2,y3_2,'co-',x3_2,y3_3,'m>-',x3_2,y3_4,'r*-')
legend('MILP','HEU','HEU+','GA');   legend boxoff
xlabel('节点资源配比(p-%)');
ylabel('传输成本');
set(gca,'XDir','reverse')
