function A=RAND_MAT(n,e)
% Example A=RAND_MAT(10,15), n>0 (n is integer), e<=nchoose(n,2)
% This algorithm used to construct the symmetric adjacency matrix corresponding to 
% the graph on n vertices and e
u=[];
for i=1:(n-1)
    u=[u [1:i]+(i*n)];
end
elist=randsample(u,e);
A=zeros(n);
A(elist)=1;
A=A+A';
return

