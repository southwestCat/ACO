%% ���·������
%���룺R ·��
function p=OutputPath(R, Name)
R=[R,R(1)];
N=length(R);
% p=num2str(R(1));
p = Name(R(1),:);
for i=2:N
%     p=[p,'��>',num2str(R(i))];
    p = [p,'->',Name(R(i),:)];
end
disp(p)