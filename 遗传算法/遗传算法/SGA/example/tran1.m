S=[];m=0;
for i=0:1
    for j=0:1
        for k=0:1
            for l=0:1
                if i==1 & i+j+k+l<=2
                    m=m+1;
                    S(m,:)=[i j k l];
                end
          
            end
        end
    end
end
S