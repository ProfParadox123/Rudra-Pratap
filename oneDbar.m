clear ;
clc ;
close all ;

runAgain = 'yes';
while strcmpi(runAgain, 'yes')
    E = input('Enter value of Youngs Modulus: ');
    %E = E*100000000 ;
    A = input('Enter cross-sectional area: ');
    L = input('Enter length of the material: ');
    P = input ('Enter Load to be applied: ');
    
    fprintf('E is : %f\n',E);
    fprintf('A is : %f\n',A);
    fprintf('L is : %f\n', L);
    fprintf('P is : %f\n', P);
    
    K = (A * E / L) * [1 -1;-1 1];
    GK = K;
    
    F = [0;P];
    
    k = K(2,2);
    f=F(2);
    
    u = f / k;
    
    U = [0;u];
    
    R = GK*U;
    R1 = R(1);
    
    disp(['Reaction force at support 1 is: ', num2str(R1)]);
    fprintf('Displacement at node 2 in mm is : %.6f\n ',U(2)*1000);

    runAgain = input('Do you want to run again? (yes/no): ', 's');
end

