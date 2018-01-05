%% 画路径函数
% 输入
% Chrom  待画路径   
% X      各城市坐标位置
%%
function DrawPath(Chrom,X)
R=[Chrom(1,:) Chrom(1,1)]; %一个随机解(个体)
figure;
hold on
plot(X(:,2),X(:,1),'o','color',[0.5,0.5,0.5])
plot(X(Chrom(1,1),2),X(Chrom(1,1),1),'rv','MarkerSize',20);
offsetRate = 10;
offsetX = 16*offsetRate;
offsetY = 9*offsetRate;
delX = (max(X(:,2))-min(X(:,2)))/offsetX;
delY = (max(X(:,1))-min(X(:,1)))/offsetY;
for i=1:size(X,1)
    text(X(i,2)+delX,X(i,1)+delY,num2str(i),'color',[1,0,0]);
end
A=X(R,:);
row=size(A,1);
for i=2:row
    [arrowx,arrowy] = dsxy2figxy(gca,A(i-1:i,2),A(i-1:i,1));%坐标转换
    annotation('textarrow',arrowx,arrowy,'HeadWidth',8,'color',[0,0,1]);
end
hold off
xlabel('横坐标')
ylabel('纵坐标')
title('轨迹图')
box on