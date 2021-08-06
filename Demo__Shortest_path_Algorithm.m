% This is used to view the results of the constructed algorithms
A=RAND_MAT(20,25); % Random symmetric adjacency matrix construted  on 20 vertices and 25 edges
[ k, SPG, n]=Sequence_Of_Powers_Of_AL(A); % Constructed the sequence of power of neighbourhood matrices 
i=10; j=20; % i is initial vertex and j is terminal vertex
[DS_P, S_P]=Shortest_path_AL(i,j,k,SPG) % Constructed the shortest path between i and j
