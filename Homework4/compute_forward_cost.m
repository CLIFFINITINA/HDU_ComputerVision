function [cost, paths] = compute_forward_cost(~, energy,axis)

%     """���� forward cost map (��ֱ) �Լ���Ӧ��seams��paths.
% 
%     �ӵ�һ�п�ʼ,����ÿһ�����ص���ۻ������ͣ���cost�����ص��cost����Ϊ�Ӷ�����ʼ��ͬһseam�����ص���ۻ������͵���Сֵ.
%     ͬʱ����ȷ���Ѿ���ԭcost�Ļ����ϣ������������Ƴ�pixel��������µ�������
%     
%     ��֮ǰһ����������Ҫ��������·����·���ϵ�ÿ�����ص��ֵֻ�����ֿ��ܣ�-1,0,�Լ�1��-1��ʾ��ǰ���ص����������Ͻǵ�Ԫ��������0��ʾ��ǰ���ص�
%     �������Ϸ���Ԫ����������1��ʾ��ǰ���ص��������Ϸ���Ԫ��������
%   
%     ����:
%         image: �ú�������û��ʹ��
%                (��������Ϊ�˺� compute_forward_cost ������һ����ͬ�Ľӿ�)
%         energy: ��״Ϊ (H, W) ������
% 
%     ����ֵ:
%         cost: ��״Ϊ (H, W) ������
%         paths: ��״Ϊ (H, W) �����飬����Ԫ��Ϊ -1, 0 ����1
%     """
    if axis == 0
        energy = energy';
    end
    
    cost = zeros(size(energy));
    paths = cost;
    [H,W] = size(energy);
    % ��ʼ��
    cost(1,:) = energy(1,:);
    for i=2:W-1
       cost(1,i)= abs(energy(1,i+1) - energy(1,i-1)); %��һ�е�cost����������������������Ƴ��������ӵ�����
    end

    %��ʾ�����Ժ�֮ǰcompute_cost�����ı�дһ����ֻ����һ��ѭ��
%   ��Ĵ���
for a = 2: H
    M = size(3, W);
    for i = 1: W
        for j = 1: 3
            if i == 1 && j == 1
                M(1, 1) = 99;
            elseif i == W && j == 3
                    M(3, W) = 99;
            else 
                M(j, i) = cost(a - 1, i + j - 2);
            end
        end
    end
    for j = 1: W
        m = 99;
        for i = 1: 3
            if M(i, j) < m
                m = M(i, j);
                if i == 1
                    paths(a, j) = -1;
                elseif i == 2
                    paths(a, j) = 0;
                else
                    paths(a, j) = 1;
                end
            end
        end
        cost(a, j) = m + energy(a, j); 
    end
    for i=2:W-1
       cost(a, i) = abs(energy(a, i + 1) - energy(a, i - 1)); %��һ�е�cost����������������������Ƴ��������ӵ�����
    end
end
%   ��Ĵ���
    if axis == 0
        cost = cost';
        paths = paths';
    end
end