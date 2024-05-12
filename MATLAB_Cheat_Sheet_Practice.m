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
fprintf("{who;} == Tell me names of the variables used, Ex:\n");
who;
fprintf("{whos;} == Tell me names, Size, Bytes, Class, Attributes of the variables used, Ex:\n");
whos;
fprintf("________________________________________________________________\n");
%% help, lookfor, doc:
%  --------------------
% three tools that I use when I don't know how to use or do something. Ex:
fprintf("{help int32;}..............\n\n");
help int32;
fprintf("________________________________________________________________\n");
fprintf("{lookfor int32;}..............\n\n");
lookfor int32;
fprintf("________________________________________________________________\n");
fprintf("{doc int32;}..............\n\n");
doc int32;
fprintf("________________________________________________________________\n");
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
M = string (Bedo); % Name = class Bytes (value)
%% Rounding: التقريب
%  --------
a = 2.6;
fprintf("{ fix( 2.6 ) = %d }\n\t " + ...
    "fix: round towards --> ""Zero""\n\n",fix(a));                % fix(2.6) = 2
fprintf("{ floor( 2.6 ) = %d }\n\t " + ...
    "floor: round towards --> ""-Inf""\n\n",floor(a));            % floor(2.6) = 2
fprintf("{ ceil( 2.6 ) = %d }\n\t " + ...
    "ceil: round towards --> ""+Int""\n\n",ceil(a));              % ceil(2.6) = 3
fprintf("{ round( 2.6 ) = %d }\n\t " + ...
    "round: round towards --> ""nearest Integer""\n\n",round(a)); % round(2.6) = 3 & round(2.4) = 2
%% Absolute and Imaginary Numbers:  (abs,angle,real,imag,complex)
%  -------------------------------

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
%% Math Symbols:
%  -------------
x = pi;         % pi ==> 3.14

y = log(x);     % log(x) ==> { ln(x) in math }.
z = log10(x);   % log10(x) ==> { log(x) in math }.
% Example:  if { x = 256; } , and { B = log2(x); } , then { B = 8 } 
% , i.e:    2^8 = 256
%           2^B = x

y = sqrt(x);
z = x^z;

x = cos(y);     % cosine in radians.
x = cosd(y);    % cosine in degrees.
x = acos(y);    % x = cos^-1(y) in radians.
x = acosd(y);   % x = cos^-1(y) in degrees.

y = exp(5);         % y = e^5
y = factorial(5);   % y = x! = (x)*(x-1)*(x-2)*(x-3)*....*(1)
%% Variables Format:
%  -----------------

% To Determine How Many Decimal Numbers I Need.
format short;
y = pi;         % 3.1416.
fprintf("format short:  y = pi ="); disp(y);