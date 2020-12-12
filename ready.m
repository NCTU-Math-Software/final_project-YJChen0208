function [x y] = ready(w, h, gap)
%   The output is the x y array that can be plot to display "READY?"
%   The input has some restriction :
%       h is the height of a word, it must be divided by 12.
%       w is the width of a word, it must be divided by 2.
%       gap is the gap between each words, it has no restriction.
% 
%   The total width of "READY?" is (w+gap)*5+w.
% 
%   Example:
%       You can get the return value by :
%       > [x y] = readyfunc(108, 200, 25);
%       > [x y] = readyfunc(20, 60, 10);
%       and draw it by:
%       > plot(x, y, '.r');
%

    % R
    x = [ones(1, h-0+1)*0];
    y = [0:h];
    x = [x 0:w];
    y = [y ones(1, w+1)*h];
    x = [x ones(1, h-h/2+1)*w];
    y = [y h/2:h];
    x = [x 0:w];
    y = [y ones(1, w-0+1)*h/2];
    x = [x w/2:0.4:w];
    y = [y h/2:-h/2/(size(x,2)-size(y,2)-1):0];
    % E
    x = [x ones(1, h-0+1)*(w+gap)];
    y = [y 0:h];
    x = [x w+gap:w*2+gap];
    y = [y ones(1, w+1)*h];
    x = [x w+gap:w*2+gap];
    y = [y ones(1, w+1)*h/2];
    x = [x w+gap:w*2+gap];
    y = [y ones(1, w+1)*0];
    % A
    x = [x (w+gap)*2:0.1:(w+gap)*2+w/2];
    y = [y 0:h/(size(x,2)-size(y,2)-1):h];
    x = [x (w+gap)*2+w/2:0.1:(w+gap)*2+w];
    y = [y h:-h/(size(x,2)-size(y,2)-1):0];
    x = [x (w+gap)*2:(w+gap)*2+w];
    y = [y ones(1, w+1)*h/2];
    % D
    x = [x ones(1, h+1)*(w+gap)*3];
    y = [y 0:h];
    x = [x (w+gap)*3:(w+gap)*3+w/2];
    y = [y ones(1, w/2+1)*h];
    x = [x (w+gap)*3:(w+gap)*3+w/2];
    y = [y ones(1, w/2+1)*0];
    x = [x (w+gap)*3+w/2:0.3:(w+gap)*3+w];
    y = [y h:-h/4/(size(x,2)-size(y,2)-1):h*3/4];
    x = [x (w+gap)*3+w/2:0.3:(w+gap)*3+w];
    y = [y 0:h/4/(size(x,2)-size(y,2)-1):h/4];
    x = [x ones(1, h/2+1)*((w+gap)*3+w)];
    y = [y h/4:h*3/4];
%     % Y
    x = [x (w+gap)*4:0.3:(w+gap)*4+w/2];
    y = [y h:-h/2/(size(x,2)-size(y,2)-1):h/2];
    x = [x (w+gap)*4+w/2:0.3:(w+gap)*4+w];
    y = [y h/2:h/2/(size(x,2)-size(y,2)-1):h];
    x = [x ones(1, h/2+1)*(w+gap)*4+w/2];
    y = [y 0:h/2];
%     % ?
    x = [x ones(1, h/3+1)*(w+gap)*5];
    y = [y h*2/3:h];
    x = [x (w+gap)*5:(w+gap)*5+w];
    y = [y ones(1, w+1)*h];
    x = [x ones(1, h/3+1)*((w+gap)*5+w)];
    y = [y h*2/3:h];
    x = [x (w+gap)*5+w:-1:(w+gap)*5+w/2];
    y = [y h*2/3:-h/6/(size(x,2)-size(y,2)-1):h/2];
    x = [x ones(1, h/4+1)*((w+gap)*5+w/2)];
    y = [y h/4:h/2];
    x = [x ones(1, h/6+1)*((w+gap)*5+w/2)];
    y = [y 0:h/6];
end