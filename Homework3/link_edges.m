%����``double_thresholding``�����ǿ������Ե�ı��
%������Ե���ҳ���ǿ��Ե�����ӵĵ㣬������
%��Ҫע����ǣ����һ������Ե1��ǿ��Ե��������ô��Ҳ��edge
%ͬʱ�������һ������Ե2������Ե1Ҳ��������ô����Ե2Ҳ����Ϊedge
%����ʵ��Ҳ����˵����Եһ����ǿ��Ե�����������͵�ͬ��ǿ��Ե�ˣ�
%�����һ����һ�������ǣ�����һ��list����ǿ��Ե��Ȼ�󲻶ϴ���ȡ��ǿ��Ե��
%���������Χ��һ��������Ե������������ô�Ͱ��������Ե�ӵ����list����
%���������Ե֮ǰû�б��ӽ�ȥ��������㻹��Ҫһ��map�洢������ص���û�м����list��
%ѭ����ֱ��listΪ��
function edges = link_edges(strong_edges, weak_edges)
    [H, W] = size(strong_edges);
    idx = find(strong_edges > 0);
    edges = strong_edges;

    %   ��Ĵ���
    map=strong_edges;

     while(size(idx,1)~=0)
         a=get_neighbors(ceil(idx(1,1)/H),ceil(idx(1,1)/W),H,W);
         for i=1:size(a,1)
             if weak_edges(a(i,1),a(i,2))==1 && map(a(i,1),a(i,2))~=1 
                 map(a(i,1),a(i,2))=1;
                 idx=[idx;(a(i,1)-1)*W+a(i,2)];
             end
         end
         idx(1,:)=[];   
     end
      edges=map;
    %   ��Ĵ���

end

function neighbors=get_neighbors(x, y, H, W)
    %�������� x, y�����ظõ����ڵ������
    x = [x-1, x, x+1];
    y = [y-1, y, y+1];
    x(x <= 0 | x>H) = [];
    y(y <= 0 | y>W) = [];
    [xx, yy] = meshgrid(x, y);
    neighbors = [xx(:), yy(:)];
end