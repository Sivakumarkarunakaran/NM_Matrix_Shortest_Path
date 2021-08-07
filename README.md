# NM_Matrix_Shortest_Path
This is an efficient algorithm to construct shortest path between any pair vertices of facebook graph. 

Abstract
In the study of network optimization, finding the shortest path minimizing time/distance/cost from a source node to a
destination node is one of the fundamental problems. Our focus here is to find the shortest path between any pair of
nodes in a given undirected unweighted simple graph with the help of the sequence of powers of neighbourhood
matrices. 

SN Applied Sciences (2020) 2:944 | https://doi.org/10.1007/s42452-020-2635-1


CONN_MAT.m ----- Construct the symmetric adjacency matrix corresponding to the connected graph on given n vertices and e edges. 

Common_Neighbour.m------  This algorithm used to construct the common neighbour x. The input are the output of Sequence_Of_Powers_Of_AL.m.  i is the initial vertex and j is the terminal vertex and l is an arbitrary number, note that l<=k

D1_100.mat------ This dataset contains 1100 graphs where each graph is connected and contains 100 vertices. The first graph of this collection is P_100 ∪ {e} , where e is any edge and P_100 is a path graph on 100 vertices. Consecutively, a graph Gm ∈ DS1 , for 1 ≤ m ≤ 1100 contains P_100 ∪ {e1, e2,…, em} for a random generated set of m−distinct edges. In particular, Gm contains 100 vertices and 99 + m edges.

D2_200.mat------ This dataset contains 1100 graphs where each graph is connected and contains 200 vertices. The first graph of this collection is P_200 ∪ {e} , where e is any edge and P_200 is a path graph on 200 vertices. Consecutively, a graph Gm ∈ DS2 , for 1 ≤ m ≤ 1100 contains P_200 ∪ {e1, e2,…, em} for a random generated set of m−distinct edges. In particular, Gm contains 200 vertices and 199 + m edges.

D3_300.mat------ This dataset contains 1100 graphs where each graph is connected and contains 300 vertices. The first graph of this collection is P_300 ∪ {e} , where e is any edge and P_300 is a path graph on 300 vertices. Consecutively, a graph Gm ∈ DS3 , for 1 ≤ m ≤ 1100 contains P_300 ∪ {e1, e2,…, em} for a random generated set of m−distinct edges. In particular, Gm contains 300 vertices and 299 + m edges.

Demo__Shortest_path_Algorithm.m----- This algorithm is a demo for shortest path algorithm

RAND_MAT.m----- Construct the symmetric adjacency matrix corresponding to the graph on given n vertices and e edges

Sequence_Of_Powers_Of_AL.m----- This algorithm used to construct the sequence of power of neighbourhood matrix corresponding to given symmetric adjacency matrix.

Shortest_path_AL.m----- This algorithm used to construct the shortest path between vertex i and vertex j. k and SPG are the output of algorithm Sequence_Of_Powers_Of_AL.m

Shortest_path_Neighbourhood_Matrix.pdf ----- Corresponding Research article of this work 

facebook_100000.mat-----This dataset contains one graph with 4039 vertices, 88,234 edges. Here we choosed randomly selected 100000 pair of vertices. 

facebook_50000.mat-----This dataset contains one graph with 4039 vertices, 88,234 edges. Here we choosed randomly selected 50000 pair of vertices.

facebook_dis8.mat-----This dataset contains one graph with 4039 vertices, 88,234 edges and has a diameter of 8. (Hence, we see
that the iteration number is 3).
