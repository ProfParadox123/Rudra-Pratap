% Defining Material and Geomerty 
E1 = 200000 ;
A1 = 50 ;
L1 = 90 ;
E2 = 200000 ;
A2 = 100 ;
L2 = 120 ;

%Defining local stifness matrix of elements 
k1 = ( ( E1 * A1 ) / L1 ) * [1 -1;-1 1] ;
k2 = ( ( E2 * A2 ) / L2 ) * [1 -1;-1 1];

% Assembling the global stiffness matrix
GK = zeros(3) ;
GK(1:2, 1:2) = GK(1:2, 1:2) + k1;
GK(2:3, 2:3) = GK(2:3, 2:3) + k2;

% Defining the force vector
F = [0; 0; 160000];

% Applying Baundary condition
modK = GK(2:3,2:3) ;
modF = F(2:3,1);
modU = inv(modK)*modF ;
U = [0;modU]