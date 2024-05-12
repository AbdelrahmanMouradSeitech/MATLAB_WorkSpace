%%
close all;
clear;
clc;

%%  Relational Operators:
%   ---------------------

fprintf("________________________________________________________________\n");
fprintf("Relational Operators:\n---------------------\n\n");

disp("  <    :   Less Than?");
disp("  >    :   More Than?");
disp("  <=   :   Less Than or Equal?");
disp("  >=   :   More Than or Equal?");
disp("  ==   :   Is Equal?");
disp("  =~   :   Not Equal?");

%%  Logical Operators:
%   ------------------

fprintf("________________________________________________________________\n");
fprintf("Logical Operators:\n------------------\n\n")

disp("  &    :   AND ( Element/ bitwise )   ");
disp("  |    :   OR  ( Element/ bitwise )   ");
disp("  ~    :   NOT ( Condition / Element )   ");
disp("  &&   :   AND ( Condition )   ");
disp("  ||   :   OR  ( Condition )   ");

%% If Conditions:
%  --------------

fprintf("________________________________________________________________\n");
fprintf("If Conditions:\n--------------\n\n");

fprintf("if(condition_True)" + ...
        "\n|\tPerform tasks x1...xn;" + ...
        "\nend\n\n\n\n");

fprintf("if(condition_True)" + ...
        "\n|\tPerform tasks x1...xn;" + ...
        "\nelse" + ...
        "\n|\tPerform tasks y1...yn;" + ...
        "\nend\n\n\n\n");

fprintf("if(condition_1_True)" + ...
        "\n|\tPerform tasks x1...xn;" + ...
        "\nelseif(condition_2_True)" + ...
        "\n|\tPerform tasks y1...xn;" + ...
        "\nelseif(condition_3_True)" + ...
        "\n|\tPerform tasks z1...xn;" + ...
        "\n|\t.\n|\t.\n|\t.\n|\t." + ...
        "\nelseif(condition_n_True)" + ...
        "\n|\tPerform tasks b1...bn;" + ...
        "\nelse" + ...
        "\n|\tPerform tasks a1...an;" + ...
        "\nend\n\n");

%% switch-case-otherwise-end:
%  --------------------------

fprintf("________________________________________________________________\n");
fprintf("switch-case-otherwise-end:\n--------------------------\n\n");

fprintf("switch(Variable of Type int)" + ...
         "\n|\tcase(value_1)  \n|\t    perform task a1 to an" + ...
         "\n|\tcase(value_2)  \n|\t    perform task b1 to bn" + ...
         "\n|\t.\n|\t.\n|\t." + ...
         "\n|\tcase(value_k)  \n|\t    perform task x1 to xn" + ...
         "\n|\totherwise)  \n|\t    perform task z1 to zn" + ...
         "\nend\n\n\n");

% % Example:
% N = 4;
% switch(N)
%     case(1)
%         disp("Jan");
%     case(2)
%         disp("Feb");
%     case(3)
%         disp("Mars");
%     case(4)
%         disp("April");
%     otherwise
%         disp("Not a valid number in the planned range");
% end


%% for loops:
%  ----------

fprintf("________________________________________________________________\n");
fprintf("for loops:\n----------\n\n");
% for - end
fprintf("for ( Variable=    StartNumber : Step : LastNumber )" + ...
        "\n|\tPerform Tasks a1 to an;" + ...
        "\nend\n\n\n");
% nested - for
fprintf("for ( Variable_1 =    StartNumber1 : Step1 : LastNumber1 )" + ...
        "\n|\tPerform Tasks a1 to an;" + ...
        "\n|\n|\tfor( Variable_2 =    StartNumber2 : Step2 : LastNumber2 )" + ...
        "\n|\t|\tPerform Tasks x1 to xn" + ...
        "\n|\tend" + ...
        "\nend\n\n\n");

% % Example(1):
% x = 0; y =0;
% for(v= 0:1:10)
%     x = x + v;
%     y = y + v + x;
%     fprintf("x = %d , y = %d\n",x,y);
%     pause(1);   % wait for 1 seconds.
% end

% % Example(2):
% %   Program to read ekement by element inside matrix.
% M = [ 1 2 3;
%       4 5 6;
%       7 8 9 ];
% [r,c] = size(M);
% for (v1 = 1:1:r)
%     for (v2 = 1:1:c)
%         fprintf("M(%d,%d) = %d\n",v1,v2,M(v1,v2));
%     end
% end

%% while loops:
%  ------------

fprintf("________________________________________________________________\n");
fprintf("while loops:\n------------\n\n");

fprintf("while( condition_True )" + ...
    "\n|\tPerform Tasks from a1 to an;" + ...
    "\nend\n\n\n");

% % Example(1):
% x = 0;
% y = 10;
% while(x<y)
%     x=x+1;
%     fprintf("x = %d\n",x);
%     pause(1);   % wait for 1-second.
% end
fprintf("________________________________________________________________\n");

%% Try-Catch-End:
%  --------------

fprintf("Try-Catch-End:" + ...
      "\n--------------\n\n")

% We use it when we calculate variable value and 
% it can stop our program   =>  {NaN or Inf}.
%       - Undefined Variable.
%       - Not a Number (NaN).
%       - Infinity (Inf).

% Example:
v1 = 1;

try 
    v2 = v1 * output;   % ERROR: Undefined Variable {"output"}
    fprintf("try statement Executed:\n\t\t" + ...
        "v2 == %d\n",v2);
catch 
    v2 = v1 * 25;
    fprintf("catch statement Executed:\n\t\t" + ...
        "v2 = %d\n",v2);
end
fprintf("________________________________________________________________\n");

%% User-Definde Functions:
%  -----------------------  
% 
% NOTE: Function definitions in a script MUST appear {"at the end of the file"}.
%


fprintf("User-Definde Functions:\n-----------------------\n\n");

% Function
%     2 inputs:     b, x
%     4 outpus:     sum, mean, max, min

% ____________________________Function Calls____________________________
% Calling Function Example(1) : MathFunction.
[a1,a2,a3,a4] = MathFunction(5,7); % Function Call. 
fprintf("sum=%d \nmean=%d \nmax=%d \nmin=%d\n",a1,a2,a3,a4);
% [A,B,C,D,E,F] = Function_Example_2 (a1,a2,a3);
% fprintf("\nA=%d\nB=%d\nC=%d\nD=%d\nE=%d\nF=%d\n",A,B,C,D,E,F);
% 

% ____________________________Function Implementation____________________________
% Function Example(1):
function[sum_x , mean_x , max_x , min_x] = MathFunction(b,x) % Function Implementation.
    v = [b , x];
    sum_x = sum(v);
    mean_x = mean(v);
    max_x = max(v);
    min_x = min(v);
end

% Functin Example(2):
% function[A,b,C,D,E,F] = Function_Example_2 (z1,z2,z3)
%     A = z1 + z2 / z3 ; 
%     b = z1 * z2 - z3 ; 
%     C = z1 / z2 * z3 ; 
%     D = z1 - z2 + z3 ; 
%     E = z1 + z2 * z3 ; 
%     F = z1 - z2 / z3 ; 
% end
