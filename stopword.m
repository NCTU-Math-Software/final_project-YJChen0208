function [x y] = stopword(w, h, gap)
%   S
    x = [ones(1, h/2+1)*0];
    y = [h/2:h];
    x = [x ones(1, h/2+1)*w];
    y = [y 0:h/2];
    x = [x 0:w];
    y = [y ones(1, w+1)*h];
    x = [x 0:w];
    y = [y ones(1, w+1)*h/2];
    x = [x 0:w];
    y = [y ones(1, w+1)*0];
%   T
    x = [x w+gap:w*2+gap];
    y = [y ones(1, w+1)*h];
    x = [x ones(1, h+1)*(w+gap+w/2)];
    y = [y 0:h];
%   O
    x = [x ones(1, h+1)*(w+gap)*2];
    y = [y 0:h];
    x = [x ones(1, h+1)*((w+gap)*2+w)];
    y = [y 0:h];
    y = [y ones(1, w+1)*h];
    x = [x (w+gap)*2:((w+gap)*2+w)];
    y = [y ones(1, w+1)*0];
    x = [x (w+gap)*2:((w+gap)*2+w)];
%   P
    x = [x ones(1, h+1)*(w+gap)*3];
    y = [y 0:h];
    x = [x (w+gap)*3:(w+gap)*3+w];
    y = [y ones(1, w+1)*h];
    x = [x ones(1, h/2+1)*((w+gap)*3+w)];
    y = [y h/2:h];
    x = [x (w+gap)*3:(w+gap)*3+w];
    y = [y ones(1, w+1)*h/2];
    
%     plot(x, y, '.r');

end