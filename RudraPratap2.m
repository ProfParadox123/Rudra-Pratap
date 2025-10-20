%  Lesson 1 : 

% A Mininum MATLAB Session : 
% +, -, *, /, ^, ;, sin, cos, acos, asin, log, quit, format short e, format
% long,

%Exercise:

% 1) Arithmetic operations : 

%Calculate the values of a and b       print command is fprintf() or disp()
a = 2^5 / ((2^5)-1);
b = (1-(1/(2^5)))^-1;
if a > b ;
    fprintf('a is greater\n')    % use \n for new line after answer
elseif a < b ;
    fprintf('b is greater\n')
else
    fprintf('a and b are equal\n')
end

%sqrt()
c = (3 * ((5^0.5)-1)/(((5^0.5)+1)^2))-1 ;
fprintf('The value is %f\n',c);    %fprintf takes string first , so dont use if want to just display number , use disp for it 

d = (3 * (sqrt(5)-1)/((sqrt(5)+1)^2))-1 ;
disp(d)                           % dont need to specify for new line 

%Area 

Area = pi * (pi^(1/3)-1)^2;
disp(Area)

% 2) Exponential and logarithms :

% e^x is exp(x)
%ln x is log(x) 
%log x is log10(x)

disp(exp(3))
disp(log(exp(3)))
disp(log10(exp(3)))
disp(log10(10^5))

disp(exp(pi*sqrt(163)))

x = log(17) / log(3)
disp(x)

% 3) Trignometry :

% sin , cos , tan , cot , sec , csc , arcsin (asin) , angles are in radians

sin(pi/6)
cos(pi)
tan(pi/2)

(sin(pi/6)*sin(pi/6))+(cos(pi/6)*cos(pi/6))

y = (cosh(32*pi))^2-(sinh(32*pi))^2

% 4) Complex numbers :

(1+3i)/(1-3i)

exp((pi/4)*i)
cos(pi/4)+i*sin(pi/4)    % e^ix = cosx + isinx

exp(pi/2*i)     % i multiplies to whole pi/2
exp(pi/2i)      % i in multiplied to 2