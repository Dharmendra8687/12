close all
figure
tiledlayout(1,2)

nexttile(1)
x=categorical({'US06','US06 G5', 'UDDS','UDDS G5'});
x = reordercats(x,{'US06','US06 G5', 'UDDS','UDDS G5'}); 

y = [ 941 1288 ; 833 1139; 1136 1337; 919 1318]./1000;
b=bar(x,y);
y_txt=[(2688-941)/24/487,(2688-1288)/24/487 , (2381-833)/24/1165,(2381-1139)/24/1165, (2865-1136)/10.58/432,(2865-1337)/10.58/432, (2751-919)/10.58/1052,(2751-1318)/10.58/1052].*100;
text([0.8,1.1,1.8,2.1,2.8,3.1,3.8,4.1],[941, 1288 , 833, 1139, 1136, 1337, 919, 1318]./1000,num2str(y_txt','%.1f'),'vert','bottom','horiz','center'); 
b(1).FaceColor = ['r'];
b(2).FaceColor = ['k'];
xlabel('Drive cycle','fontweight','bold');
ylabel('Energy consumption (kWh)','fontweight','bold');
ylim([0 1.7])
legend({'Ideal WHR','No WHR'})
legend('Location','southeast')
title('(a)')
set(gca, 'YGrid', 'on', 'XGrid', 'off')

nexttile(2)
% x=categorical({'-5\circC UB','0\circC UB', '5\circC UB','0\circC PB 15\circC','0\circC PB 20\circC', '0\circC PB 30\circC'});
% x = reordercats(x,{'-5\circC UB','0\circC UB', '5\circC UB','0\circC PB 15\circC','0\circC PB 20\circC', '0\circC PB 30\circC'}); 
% y = [ 1216 1530 ; 941 1288; 599 960; 683 855; 654 821; 634 830];

x=categorical({'-5','0', '5','0 (PB 20)'});
x = reordercats(x,{'-5','0', '5','0 (PB 20)'}); 
y = [ 1216 1530 ; 941 1288; 599 960; 654 821]./1000;

b=bar(x,y);
y_txt=[(3252-1216),(3252-1530) , (2688-1288),(2381-833), (2079-599),(2079-960) , (1610-654),(1610-821) ]./24/487*100;
text([0.8,1.1,1.8,2.1,2.8,3.1,3.8,4.1],[1216,1530 , 941, 1288, 599,960 , 654,821]./1000,num2str(y_txt','%.1f'),'vert','bottom','horiz','center'); 
b(1).FaceColor = ['r'];
b(2).FaceColor = ['k'];
xlabel('Ambient temp. (\circC)','fontweight','bold');
ylabel('Energy consumption (kWh)','fontweight','bold');
ax=gca;
ax.XAxis.FontSize=10;
ax.XLabel.FontSize = 11;
ylim([0 1.7])
legend({'Ideal WHR','No WHR'})
legend('Location','southeast')
title('(b)')
set(gca, 'YGrid', 'on', 'XGrid', 'off')

set(gcf, 'Position',  [50, 70, 1000, 300])
copygraphics(gcf,'Resolution',300)