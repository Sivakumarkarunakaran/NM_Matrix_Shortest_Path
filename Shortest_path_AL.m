function [DS_P, S_P]=Shortest_path_AL(i,j,k,SPG)
% This algorithm used to construct the shortest path between vertex i and
% vertex j. k and SPG are the output of algorithm [ k, SPG, n]=Sequence_Of_Powers_Of_AL(A)
% Details of algorithm can get from https://doi.org/10.1007/s42452-020-2635-1

if isequal(i,j)==1
    S_P=0;
elseif SPG(i,j,k)==0
    S_P=inf;
else
    l=1 ;
    while (SPG(i,j,l)==0) 
        l=l+1;                                                     
    end
    if l==1
        if SPG(i,j,1)>0
            S_P=[i j];        
        else
            v=find(SPG(i,:,1)>0);
            S_P=[i v(find(SPG(v,j,1)>0,1)) j];        
        end
    else
        x=Common_Neighbour(i,j,l,k,SPG);
        si=1 ;               
        S_P=[i x j];
        nt=1 ;      
        while (nt<l)                    
            Y_P=[];                       
            va=0;
            for p2=1:2*si            
                i=S_P(p2);
                j=S_P(p2+1) ;
                if SPG(i,j,1)>0
                    Y_P=[Y_P i ];
                elseif SPG(i,j,1)<0
                    v_1=find(SPG(i,:,1)>0);                
                    Y_P=[Y_P i v_1(find(SPG(v_1,j,1)>0,1)) ]  ;
                else
                    rr=2;
                    while (SPG(i,j,rr)==0)
                        rr=rr+1;
                    end
                    x=Common_Neighbour(i,j,rr,k,SPG);
                    Y_P=[Y_P i x];                                                
                    va=va+1;                
                end
            end
            S_P=[Y_P S_P((2*(si)+1) : end)];
            si=va;
            nt=nt+1;
        end
    end
end
DS_P=length(S_P)-1;
return
    
 

  
    


