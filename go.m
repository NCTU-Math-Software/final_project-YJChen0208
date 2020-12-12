function [x y]=go(w, h, gap)
%   The output is the x y array that can be plot to display "GO!"
%   The input has some restriction :
%       h is the height of a word, it must be divided by 12.
%       w is the width of a word, it must be divided by 2.
%       gap is the gap between each words, it has no restriction.
% 
%   The total width of "GO!" is (w+gap)*2.
% 
%   Example:
%       You can get the return value by :
%       > [x y] = gofunc(108, 200, 25);
%       > [x y] = gofunc(20, 60, 10);
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
    % O
    x = [x ones(1, h+1)*(w+gap)];
    y = [y 0:h];
    x = [x ones(1, h+1)*(w*2+gap)];
    y = [y 0:h];
    y = [y ones(1, w+1)*h];
    x = [x (w+gap):(w*2+gap)];
    y = [y ones(1, w+1)*0];
    x = [x (w+gap):(w*2+gap)];
    % !
    x = [x ones(1, h*3/4+1)*(w+gap)*2];
    y = [y h/4:h];
    x = [x ones(1, h/6+1)*(w+gap)*2];
    y = [y 0:h/6];

end