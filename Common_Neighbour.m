function x=Common_Neighbour(i,j,l,k,SPG)
% This algorithm used to construct the common neighbour x. The input are
% the output of [ k, SPG, n]=Sequence_Of_Powers_Of_AL(A). i is the initial
% vertex and j is the terminal vertex and l is an arbitrary number note
% that l<=k
% Details of algorithm can get from https://doi.org/10.1007/s42452-020-2635-1
X_2=find(SPG(i,:,l-1)<0);
X_2(X_2==i)=[];
ct=1;
r_1=SPG(X_2,j,ct);
while (nnz(r_1)==0)        
    ct=ct+1;    
    r_1=SPG(X_2,j,ct);
end
if ct==1
    if length(find(r_1>0))>0
        x=datasample(X_2(find(r_1>0)) ,1);
    else
        x=datasample(X_2(find(r_1==min(r_1))),1);
    end
else
    Z=X_2(find(r_1<-1));
    if length(Z)==1
        x=Z;
    elseif length(Z)==0
        x=datasample(X_2(find(r_1==-1)),1);
    else
        for co=1:length(Z)            
            i=Z(co);j=j;
            D=0;
            if isequal(i,j)==1 
                D_1=0;
            elseif SPG(i,j,k)==0
                D_1=inf;
            else
                while(1)
                    rr=1 ;
                    while (SPG(i,j,rr)==0) 
                        rr=rr+1;                                                     
                    end
                    if rr==1
                        if SPG(i,j,rr)>0 
                            D_1=1;
                            break
                        else
                            D_1=2;
                            break
                        end
                    elseif SPG(i,j,rr)==-1
                        D_1=2^rr;
                        break
                    else
                        D=2^(rr-1)+D;
                        while (true) 
                            x=Common_Neighbour(i,j,rr,k,SPG);            
                            i=x;
                            break
                        end
                    end
                end
            end
            SPD=D+D_1;                      
            %SPD=Shortest_Path_Distance(Z(co),j,k,SPG);
            SO(co)=SPD;
            clear SPD
        end
        [x1 x2]= min(SO);
        x=Z(x2);
    end
end



    