function Snake()
% 1. Show "READY?" in figure.
% 2. Press `left mouse` if you are ready, or press `right mouse` to exit.
% 3. Show "GO!" in figure.
% 4. Press `left mouse` and start playing, or press `right mouse` to exit.
% 5. while playing :
%     - You can use `arrow key` to control the direction of snake.
%     - If you dump into itself or out of the boundary, you lose the game ( the figure will show "GAMEOVER" word).
%     - You can press `c` to exit the game, or press `space` to stop, press `space` again to continue the game.
% 

    global x;
    global y;

    
	width = 200;
    height = 200;
    bdyx = [0 0 200 200 0];
    bdyy = [0 200 200 0 0];
    clf();
    axis([0 width 0 height]);
    
    %%  READY ?
    [x, y] = ready(20, 60, 10);
    x = x + 15;
    y = y + 70;
    plot(bdyx, bdyy, '-k', 'LineWidth',3); hold on;
    plot(x, y, '.r', 'MarkerSize', 15);
    title('Press right buttom to start, or left to exit.');
    axis([0 width 0 height]);
    
    while 1
        [a, b, BUTTON] = ginput(1);
        if BUTTON == 1
            x = [];
            y = [];
            clf();
            axis([0 width 0 height]);
            break;
        elseif BUTTON == 3 || BUTTON == 99
            return;
        end
    end

    %% GO!
    [x, y] = go(20, 60, 10);
    x = x+70;
    y = y+70;
    plot(bdyx, bdyy, '-k', 'LineWidth',3); hold on;
    plot(x, y, '.r', 'MarkerSize', 15);
    title('Press right buttom to start, or left to exit.');
    axis([0 width 0 height]);

    while 1
        [a, b, BUTTON] = ginput(1);
        if BUTTON == 1
            x = [];
            y = [];
            clf();
            axis([0 width 0 height]);
            break;
        elseif BUTTON == 3 || BUTTON == 99
            return;
        end
    end

    %% start playing
    global stop;
    global dirset;
    global direc;
    global cookie;
    
%     x = [ 70  70  80  80  70  60  50];
%     y = [100 110 110 100 100 100 100];
    x = [ 80  70  60  50];
    y = [100 100 100 100];
    oldx = x;
    oldy = y;
    eat = 0;
    direc = 4;
    speed = 0.01;
    geneCookie();
    stop = 0;
    cookieCnt = 0;
    warning off;
    
    while 1
        dirset = 0;
        for a=1:10
            clf(); hold on;
            [fx, fy, plotx, ploty] = calpol(oldx, oldy, a);
            plot(cookie(1), cookie(2), '.r', 'MarkerSize', 30);
            plot(fx, fy, '-k', 'MarkerSize', 30, 'LineWidth',3);
            plot(plotx(2:size(x,2)), ploty(2:size(x,2)), '.k', 'MarkerSize', 30, 'LineWidth', 3);
            plot(plotx(1), ploty(1), '.k', 'MarkerSize', 50, 'LineWidth', 4);
            plot(bdyx, bdyy, '-k', 'LineWidth',3);
            title(['Score: ', num2str(cookieCnt)]);
            
            axis([0 width 0 height]);
            if eat == 1 && a == 7
                aa = oldx(size(oldx, 2));
                bb = oldy(size(oldy, 2));
                x = [x aa];
                y = [y bb];
                oldx = [oldx aa];
                oldy = [oldy bb];
                geneCookie();
                cookieCnt = cookieCnt+1;
            end
            pause(speed);
        end
        % check gameover
        over = checkover();
        if x(1)<=0 || x(1)>=width || y(1)<=0 || y(1)>=height
            over = 1;
        end
        if over == 1
            [a, b] = gameover(18, 60, 5);
            a = a+10.5;
            b = b+70;
            plot(a, b, '.r', 'MarkerSize', 15);
            break;
        end
        
        % get keypress and move snake
        set(gcf,'KeyPressFcn', @kpfcn);
        if direc == -1
            return;
        elseif stop == 1
            [stopx, stopy] = stopword(20, 60, 10);
            stopx = stopx+45;
            stopy = stopy+70;
            plot(stopx, stopy, '.g', 'MarkerSize', 15);
            while 1
                [a, b, BUTTON] = ginput(1);
                if BUTTON == 32
                    % press SPACE
                    stop = 0;
                    break
                elseif BUTTON == 99
                    % press C
                    return;
                end
            end
        end
        oldx = x;
        oldy = y;
        eat = snakemove();
    end
end






