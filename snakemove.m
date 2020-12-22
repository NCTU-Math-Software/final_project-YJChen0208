function eat = snakemove()
% The function is use to control the move of snake according to `direc` variable by adjusting the `x` `y` value.
% It also check if the snake has eat the cookie.
%   
    global direc;
    global x;
    global y;
    global cookie;
    
    if direc == 1
        x = [x(1) x];
        y = [y(1)+10 y];
    elseif direc == 2
        x = [x(1) x];
        y = [y(1)-10 y];
    elseif direc == 3
        x = [x(1)-10 x];
        y = [y(1) y];
    elseif direc == 4
        x = [x(1)+10 x];
        y = [y(1) y];
    end
    s = size(x,2);
    x(s) = [];
    y(s) = [];
    if ( x(1) ~= cookie(1) || y(1) ~= cookie(2) )
        eat = 0;
    else
        eat = 1;
    end
end