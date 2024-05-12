%%
close all;  % Close all Open Tabs.
clear;      % Clear all stored Variables.
clc;        % Clear Command Window.
%% Variables (Double) by default:
%  -----------------------------
a = 7;      % Declared [1x1] Matrix called "a", which has a {value = 7} insde
b = 5;
c = a + b;
fprintf("________________________________________________________________\n");
%% Asking for variables:        (who,whos)
%  --------------------
fprintf("%% Asking for variables:\n--------------------\n");
fprintf("{who;} == Tell me names of the variables used, Ex:\n");
who;
fprintf("{whos;} == Tell me names, Size, Bytes, Class, Attributes of the variables used, Ex:\n\n");
whos;
fprintf("________________________________________________________________\n");
%% help, lookfor, doc:
%  --------------------
% three tools that I use when I don't know how to use or do something. Ex:
% % % fprintf("{help int32;}..............\n\n");
% % % help int32;
% % % fprintf("________________________________________________________________\n");
% % % fprintf("{lookfor int32;}..............\n\n");
% % % lookfor int32;
% % % fprintf("________________________________________________________________\n");
% % % fprintf("{doc int32;}..............\n\n");
% % % doc int32;
% fprintf("________________________________________________________________\n");
%% Declaring Variables (Casted) to dataType:
%  ------------------------------------
A = int8(8);     % Size=1-Byte , Signed(+/-)
B = int16(5);    % Size=2-Byte , Signed(+/-)
C = int32(5);    % Size=4-Byte , Signed(+/-)
D = int64(5);    % Size=8-Byte , Signed(+/-)
E = uint8(5);    % Size=1-Byte , UnSigned(+)
F = uint16(5);   % Size=2-Byte , UnSigned(+)
G = uint32(5);   % Size=4-Byte , UnSigned(+)
H = uint64(5);   % Size=8-Byte , UnSigned(+)
I = single(5);   % 4-Byte
J = double(5);   % 8-Byte
N = char(5);
M = string ('Bedo'); % Name = class Bytes (value)
%% Rounding: التقريب
%  --------
fprintf("Rounding: التقريب\n---------\n");
a = 2.6;
fprintf("{ fix( 2.6 ) = %d }\n\t " + ...
    "fix: round towards --> ""Zero""\n\n",fix(a));                % fix(2.6) = 2
fprintf("{ floor( 2.6 ) = %d }\n\t " + ...
    "floor: round towards --> ""-Inf""\n\n",floor(a));            % floor(2.6) = 2
fprintf("{ ceil( 2.6 ) = %d }\n\t " + ...
    "ceil: round towards --> ""+Int""\n\n",ceil(a));              % ceil(2.6) = 3
fprintf("{ round( 2.6 ) = %d }\n\t " + ...
    "round: round towards --> ""nearest Integer""\n\n",round(a)); % round(2.6) = 3 & round(2.4) = 2
fprintf("________________________________________________________________\n");
%% Absolute and Imaginary Numbers:  (abs,angle,real,imag,complex)
%  -------------------------------
fprintf("Absolute and Imaginary Numbers:  (abs,angle,real,imag,complex)" + ...
    "/n-------------------------------/n/n");
% If we have: a = 2 - 5i;     % 2 is real number , 5i is imaginary number.
a = 2 - 5i;
c = abs(a);     % c = |a| = sqrt( (2^2) + (5i^2) )
d = angle(a);   % d = taninverse ( -5i / 2 )
% To get the real part and imaginary part separated of the complex number:
fprintf("To get the real and Imaginary parts of the complex number { a = 2 - 5i } separated:\n");
fprintf("\t real(a) = %d\n", real(a));      % real(a) = 2
fprintf("\t imag(a) = %d\n", imag(a));      % imag(a) = -5
fprintf("\nTo Write Both Together in Their Mathematical Form:\n")
fprintf("\t complex(-1,5) = "); disp(complex(-1,5));        % complex(-1,5) = -1 + 5i
fprintf("________________________________________________________________\n");
%% Math Symbols:
%  -------------

fprintf("Math Symbols:\n-------------\n\n");

x1 = pi;         % pi ==> 3.14
y1 = log(x1);     % log(x) ==> { ln(x) in math }.
z = log10(x1);   % log10(x) ==> { log(x) in math }.
%
% Example:  if { x = 256; } , and { B = log2(x); } , then { B = 8 }
% , i.e:    2^8 = 256
%           2^B = x
%
y1 = sqrt(x1);
z = x1^z;
x1 = cos(y1);         % cosine in radians.
x1 = cosd(y1);        % cosine in degrees.
x1 = acos(y1);        % x = cos^-1(y) in radians.
x1 = acosd(y1);       % x = cos^-1(y) in degrees.
y1 = exp(5);         % y = e^5
y1 = factorial(5);   % y = x! = (x)*(x-1)*(x-2)*(x-3)*....*(1)
% fprintf("________________________________________________________________\n");

%% Variables Format:
%  -----------------

fprintf("Variables Format:\n-----------------\n\n");

% To Determine How Many Decimal Numbers I Need.
format short;
y1 = pi;         % pi = 3.1416
fprintf("{format short}:  y = pi ="); disp(y1);
%
format long;
y1 = pi;         % pi = 3.14159265289793
fprintf("{format long}:  y = pi ="); disp(y1);
%
format short e;
y1 = pi;         % pi = 3.1416e+00
fprintf("{format short e}:  y = pi ="); disp(y1);
%
format long e;
y1 = pi;         % pi = 3.14159265289793e+00
fprintf("{format long e}:  y = pi ="); disp(y1);
format short;
fprintf("________________________________________________________________\n");

%% 1-D Array Creation:  (Vector, linspace, logspace)
%  -------------------
% format compact;
format loose;

fprintf("1-D Array Creation:  (Vector, linspace, logspace)" + ...
    "\n-------------------\n\n");

% -------
% Vector:
% -------
% To Initialize a vector:
y1 = [ 1 5 8 9 7];
% To Initialize a vector from {"Start"} to {"End"} with {"Specific Increment"}.
x1 = [1:10];         % Start=1, End=10, Standart_Increment_Step=1 if not mentioned.  [1,2,3,4,5,6,7,8,9,10]
display(x1);
x1 = [1:2:10];       % Start=1, End=10, Increment_Step=2. [1,3,5,7,9]
display(x1);

% ---------
% linspace:
% ---------
%* If we want a vector from {"Start"} to {"End"}, but divide the in between
%   into number of divisions. *%
x1 = linspace (1,3,15);  % Start=1, End=3, NumberOfSteps_Divisions=15
display(x1);

% ---------
% logspace:
% ---------
%* If we want to divide between 10^0 to 10^2
%   Note that tha comparison is between powers only.
x1 = logspace(0,2,10);   % Start=10^0, End=10^2, NumberOfDivisions=10
display(x1);
fprintf("________________________________________________________________\n");
%% max, min, sum, mean, length:
%  ----------------------------

fprintf("max, min, sum, mean, length:" + ...
    "\n----------------------------\n\n");

% if we have a vector x.
x1 = [0:10];     % x = [0 1 2 3 4 5 6 7 8 9 10]
fprintf("x =");  disp(x1);

% to get value of the fifth element in x. {Array Indexing}
x1(5) = x1(5);    % x(5)=4
fprintf("x(5) = %d\nx(1) = %d\n\n",x1(5),x1(1));

% To {"square root"} the vector ==> {"element by element"}
y1 = x1.^2;       % y = [0 1 4 9 16 25 36 49 64 81 100]
fprintf("y =");  disp(y1);

% to calculate the value of the maximum element
fprintf("max(x) =");  disp( max(x1) );   % 10

% to calculate the value of the minimum element
fprintf("min(x) =");  disp( min(x1) );   % 0

% To calculate the average of the vector element -> Avg = Sum/ No = mean
fprintf("avg = mean(x) =");  disp( mean(x1) );   % 5

% if I wanna know the number of elements inside the vector.
fprintf("No. Of Elements = length(x) =");  disp( length(x1) );   % 11

% if I wanna know the summation of the elements inside the vector.
fprintf("sum(x) =");  disp( sum(x1) );   % 55

% To ask for set of elements indexes from 2nd to 7th, with increment of 2,
% i.e 2nd, 4th, 6th
fprintf("x(2:2:7) =");  disp( x1(2:2:7) );   % start from 2nd index, step=2 , end at 7th index.
                                            % Ans = 1   3   5

% to ask for elements indexes decreases from 9 to 1
fprintf("x(9:-1:1) =");  disp( x1(9:-1:1) ); % start from 9th index, step=-1 , end at 1st index.
                                            % Ans = 8 7 6 5 4 3 2 1 0
fprintf("________________________________________________________________\n");
%% Sorting vectors:     (ascending, descending)
%  ----------------

fprintf("Sorting Vectors" + ...
    "\n------------------\n\n");

% to arrange a vector elements ascendingly.
a = sort(x1);        % Standard
fprintf("a = sort(X) =");   disp(a);

% To be more Specific.
a = sort(x1,'ascend');   fprintf("a = sort(X,'ascend') =");   disp(a);
a = sort(x1,'descend');  fprintf("a = sort(X,'descend') =");   disp(a);
fprintf("________________________________________________________________\n");
%% Randomized Values:
%  ------------------

fprintf("Randomized Values:" + ...
    "\n------------------\n\n");

% To generate random value bet 0 and 1.
x1 = rand(1);    % Ans = [1x1] matrinx with element numbers between 0 and 1 random.
fprintf("x = rand(1) =");    disp(x1);

% to generate random value bet 0 and 4.
x1 = rand(5);    % Ans = [5x5] matrinx with element numbers between 0 and 1 random.
fprintf("x = rand(5) =");    display(x1);
fprintf("________________________________________________________________\n");
%% Random Vectors:
%  ---------------

fprintf("Random Vectors:" + ...
    "\n--------------\n\n");

% To make a vector with random values inside.
x1 = rand(1,10);     % random values bet 0 and 1
                    % number of rows = 1
fprintf("x = rand(1,10) =");    display(x1);
fprintf("________________________________________________________________\n");


%% Matrices:
%  ---------
fprintf("\n\n________________________________________________________________" + ...
        "Matrices________________________________________________________________\n");


%% Matrix: Definition, Addition, Subtraction:
%  ------------------------------------------

fprintf("Matrix: Definition, Addition, Subtraction:" + ...
    "\n------------------------------------------\n\n");

% to write a [3x3] matrix.
G = [1 2 3 ; 4 5 6 ; 7 8 9];
H = [1 1 1 ; 2 2 2 ; 3 3 3];
fprintf("G = \n"); disp(G);
fprintf("H = \n"); disp(H);

% Addition and Subtraction.
L = G + H;      % Add. {"Element By Element"}.
N = G - H;      % Sunt. {"Element By Element"}.
fprintf("L = G + H = \n"); disp(L);
fprintf("N = G - H = \n"); disp(N);

% Matrix Multiplication and Division.
x1 = G * H;      % Multiplication {"Normal"}.
y1 = G / H;      % Division {"Normal"}.
fprintf("x1 = G * H = \n"); disp(x1);
fprintf("y1 = G / H = \n"); disp(y1);

% Matrix Multiplication and Division. {"Element By Element"}.
x2 = G .* H;      % Multiplication {"Element By Element"}.
y2 = G ./ H;      % Division {"Element By Element"}.
fprintf("x2 = G .* H = \n"); disp(x2);
fprintf("y2 = G ./ H = \n"); disp(y2);
fprintf("________________________________________________________________\n");

%% Special Matrices:    (ones, zeros, eye, diagonal, inverse)
%  -----------------

fprintf("Special Matrices:    (ones, zeros, eye, diagonal, inverse)\n-----------------");

% matrix of ones.
T1 = ones(4);    % [4x4] Matrix with each element = 1
display(T1);

T2 = ones(4,6);  % [4x6] Matrix with each element = 1
display(T2);

% Matrix of zeros.
Z1 = zeros(3);   % [3x3] Matrix with all its elements = 0
display(Z1);

Z2 = zeros(3,5); % [3x5] Matrix with all its elements = 0
display(Z2);

% Eye Matrix.
S = eye(3);
display(S);

% Inverse of a Matrix.
A = [2 4 5; 3 1 2; 4 9 2];
display(A);
B = inv(A);     % The inverse of matrix A
display(B);
fprintf("________________________________________________________________\n");

%% Matrix Edit:     (elements, rows, columns)
%  ------------

fprintf("Matrix Edit:     (elements, rows, columns)\n------------");

% change value of a specific element.
A(3,3) = 0;     % change element from 9 to 0 for the element in the index (3,3).
                % index: 3rd row, 3rd column.
display(A);

% Change whole values in a specific row.
A(3,:) = [6 7 1];       % change the values of the 3rd row.
display(A);

% Change whole values in a specific column.
A(:,2) = [5; 10; 100];       % change the values of the 2nd column.
display(A);

fprintf("________________________________________________________________\n");

%% Matrix Manipulation:     (transpose, random, reterminant, rempat)
%  --------------------

fprintf("Matrix Manipulation:     (transpose, random, reterminant, rempat)\n--------------------");

A = [1 2 3; 4 5 6; 7 8 9];
display(A);

% Transpose Matrix.
% {Transpose: Turning rows into columns and vise versa}.
B = A';
display(A);

% Random Matrix.
% To make ranom values matrix from 0 to 1.
C = rand(3,4);
display(C);

% determinant of Matrix.
% Answer should be a single [1x1] number.
D = det(A);
display(D);

% Repmat Matrix.
% To make a matrix of all elements of equal numbers.
F = pi*ones(3,4);
F = repmat(pi,3,4);
display(F);
fprintf("________________________________________________________________\n");

%% Reshape Matrix:
%  ---------------
%
%   We use it to change the number of rows and columns
%       The number of elements must stay constant {"R1xC1 = N = R2xC2"}
%       The priority is always for the columns 1st.

fprintf("Reshape Matrix:\n---------------");

A = rand(3,4);                  display(A);   % [3x4] Matrix <-- 12 elements.
B = reshape(A,6,2);   
fprintf("B = reshape(A) =\n");  disp(B);      % [6x2] Matrix <-- 12 elements.
fprintf("________________________________________________________________\n");

%% Matrix Data Extraction:      (size, length, triange)
%  -----------------------

fprintf("Matrix Data Extraction:      (size, length, triange)\n-----------------------\n");

A = [1 2 3; 4 5 6; 7 8 9];  
display(A);

% Triangle {"Upper / Lower"}.
B1 = triu(A);   % triangle upper.
display(B1);
B2 = tril(A);   % triangle lower.
display(B2);

% Matrix Size.
%   If we wanna know the size of matrix.
%   Size means number of Rows and Columns of this matrix.
%   size function return 2 parameters r,c
x1 = rand(3,4);
[r,c] = size(x1);        % r=3 , c=4
fprintf("[r,c]=size(rand(3,4)) , r=%d , c=%d\n\n",r,c);

% Matrix length.
%   This function returns the longest wheather its the rows or columns.
x1 = rand(3,4); y1=length(x1);  fprintf("y1=length(rand(3,4)) = %d\n",y1);
x2 = rand(7,2); y2=length(x2);  fprintf("y2=length(rand(7,2)) = %d\n\n",y2);

% Martrix Number of Elements (numel).
p = numel(x1);   
fprintf("p = numel(rand(3*4)) = %d\n\n",p);
fprintf("________________________________________________________________\n");

%%
