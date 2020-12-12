function [x y] = gameover(w, h, gap)
%   The output is the x y array that can be plot to display "GAMEOVER"
%   The input has some restriction :
%       h is the height of a word, it must be divided by 2.
%       w is the width of a word, it must be divided by 2.
%       gap is the gap between each words, it has no restriction.
% 
%   The total width of "GAMEOVER!" is (w+gap)*7+w.
% 
%   Example:
%       You can get the return value by :
%       > [x y] = gameover(108, 200, 25);
%       > [x y] = gameover(18, 60, 5);
%       and draw it by:
%       > plot(x, y, '.r');
%


    % G
    x = [ones(1, h+1)*0];
    y = [0:h];
    x = [x 0:w];
    y = [y ones(1, w+1)*h];
    x = [x 0:w];
    y = [y ones(1, w+1)*0];
    x = [x ones(1, h/2+1)*w];
    y = [y 0:h/2];
    x = [x w/2:w];
    y = [y ones(1, w/2+1)*h/2];
    % A
    x = [x (w+gap):0.1:(w+gap)+w/2];
    y = [y 0:h/(size(x,2)-size(y,2)-1):h];
    x = [x (w+gap)+w/2:0.1:(w+gap)+w];
    y = [y h:-h/(size(x,2)-size(y,2)-1):0];
    x = [x (w+gap):(w+gap)+w];
    y = [y ones(1, w+1)*h/2];
    % M
    x = [x ones(1, h+1)*(w+gap)*2];
    y = [y 0:h];
    x = [x ones(1, h+1)*((w+gap)*2+w)];
    y = [y 0:h];
    x = [x (w+gap)*2:0.1:(w+gap)*2+w/2];
    y = [y h:-h/(size(x,2)-size(y,2)-1):0];
    x = [x (w+gap)*2+w/2:0.1:(w+gap)*2+w];
    y = [y 0:h/(size(x,2)-size(y,2)-1):h];
    % E
    x = [x ones(1, h+1)*(w+gap)*3];
    y = [y 0:h];
    x = [x (w+gap)*3:(w+gap)*3+w];
    y = [y ones(1, w+1)*h];
    x = [x (w+gap)*3:(w+gap)*3+w];
    y = [y ones(1, w+1)*h/2];
    x = [x (w+gap)*3:(w+gap)*3+w];
    y = [y ones(1, w+1)*0];
    
    % O
    x = [x ones(1, h+1)*(w+gap)*4];
    y = [y 0:h];
    x = [x ones(1, h+1)*((w+gap)*4+w)];
    y = [y 0:h];
    y = [y ones(1, w+1)*h];
    x = [x (w+gap)*4:(w+gap)*4+w];
    y = [y ones(1, w+1)*0];
    x = [x (w+gap)*4:(w+gap)*4+w];
    % V
    x = [x (w+gap)*5:0.1:(w+gap)*5+w/2];
    y = [y h:-h/(size(x,2)-size(y,2)-1):0];
    x = [x (w+gap)*5+w/2:0.1:(w+gap)*5+w];
    y = [y 0:h/(size(x,2)-size(y,2)-1):h];
    % E
    x = [x ones(1, h+1)*(w+gap)*6];
    y = [y 0:h];
    x = [x (w+gap)*6:(w+gap)*6+w];
    y = [y ones(1, w+1)*h];
    x = [x (w+gap)*6:(w+gap)*6+w];
    y = [y ones(1, w+1)*h/2];
    x = [x (w+gap)*6:(w+gap)*6+w];
    y = [y ones(1, w+1)*0];
    % R
    x = [x ones(1, h-0+1)*(w+gap)*7];
    y = [y 0:h];
    x = [x (w+gap)*7:(w+gap)*7+w];
    y = [y ones(1, w+1)*h];
    x = [x ones(1, h-h/2+1)*((w+gap)*7+w)];
    y = [y h/2:h];
    x = [x (w+gap)*7:(w+gap)*7+w];
    y = [y ones(1, w-0+1)*h/2];
    x = [x (w+gap)*7+w/2:0.4:(w+gap)*7+w];
    y = [y h/2:-h/2/(size(x,2)-size(y,2)-1):0];
    
end