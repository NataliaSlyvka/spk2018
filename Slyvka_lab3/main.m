%% �����������: ��������� �������������
%% �������: �������� ������� �����

% ������: ������ ����������� �������,
% ���� ��������� ����� ����� ���� �� ������ ����
% ����� ������ � ����������� ������ ���
% �������� ���� �� ������ �������������
% � ������� ��������� ���� ������� ���
% ��� ������� � 5 ��� ������� ������ 5! = 120 ����� ������� ������
% ���� ����� ��������� ������� ����� ������� ��� (5)

startPopulation = [
    5, 2, 1, 4, 3;
    4, 1, 3, 2, 5;
    2, 5, 1, 3, 4;
    4, 3, 2, 5, 1;
    1, 4, 5, 3, 2
];

options = gaoptimset(...
    'EliteCount', 0, ...
    'PopulationSize', 5, ...
    'InitialPopulation', startPopulation, ...
    'MutationFcn', @MutationFcn, ...
    'CrossoverFcn', @CrossoverFcn, ...
    'TimeLimit', 3 ...
);
[x,fval,exitflag,output,population,scores] = ga(@optim_function, 5, options);

disp('��������� �������:'); disp(x);
fprintf('f(x) = %d\n', fval);
disp('������� ���������:');
for i=1:1:5
    for j=1:1:5
        fprintf('\t%d', population(i,j));
    end;
    fprintf('\t=>\t%d\n', scores(i));
end;
