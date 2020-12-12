function snakemove()
%   The function is use to control the move of snake
%   according to `direc` variable, and also check if
%   the snake has eat the cookie.
%   The global variable must be define in main function too.
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
    if ( x(1) ~= cookie(1) || y(1) ~= cookie(2) )
%       snake didnt eat cookie so delete last position
        s = size(x,2);
        x(s) = [];
        y(s) = [];
    else
%       Snake eat cookie, add a new cookie
        cookie = [int32(rand(1)*18)*10+10 int32(rand(1)*18)*10+10];
    end
end