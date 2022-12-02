%����`non_maximum_suppression`����˷Ǽ���ֵ����
function result = non_maximum_suppression(G ,theta)
    % ���Ƕ�round�������45����ȥ
    theta = floor((theta + 22.5) / 45) * 45;
    result = zeros(size(G));
    
    %��ʾ������theta��ʱ������Ĭ������Ϊx������������Ϊy��������
    %���ԣ�����45��ȽǶȵĴ����ע�⡣
    %   ��Ĵ���

    [m,n]=size(G);
    qwe=zeros(m+2,n+2);
    qwe(2:m+1,2:n+1)=G;
    temp=qwe;
    for i=2:m+1
        for j=2:n+1
            while(theta(i-1,j-1)>135)
                theta(i-1,j-1)=theta(i-1,j-1)-180;
            end
            switch theta(i-1,j-1)
                case 0 
                    if(qwe(i,j)>=qwe(i,j+1)&&qwe(i,j)>=qwe(i,j-1))
                    else 
                       temp(i,j)=0  ;   
                    end
                case 45
                    if(qwe(i,j)>=qwe(i+1,j+1)&&qwe(i,j)>=qwe(i-1,j-1))
                    else 
                       temp(i,j)=0  ;   
                    end
                case 90
                    if(qwe(i,j)>=qwe(i+1,j)&&qwe(i,j)>=qwe(i-1,j))
                    else 
                       temp(i,j)=0  ;   
                    end
                case 135
                    if(qwe(i,j)>=qwe(i-1,j+1)&&qwe(i,j)>=qwe(i+1,j-1))
                    else 
                       temp(i,j)=0  ;   
                    end   
            end
        end
    end
    temp(m+2,:)=[];
    temp(1,:)=[];
    temp(:,n+2)=[];
    temp(:,1)=[];
    
    result=temp;
    %   ��Ĵ���
end