function main()
    global x;
    global y;
    global direc;
    global cookie;
    
	width = 200;
    height = 200;
    bdyx = [0 0 200 200 0];
    bdyy = [0 200 200 0 0];
    clf();
    axis([0 width 0 height]);
    
    %%  READY ?
    [x y] = ready(20, 60, 10);
    x = x + 15;
    y = y + 70;
    plot(bdyx, bdyy, '-k', 'LineWidth',3); hold on;
    plot(x, y, '.r', 'MarkerSize', 15);
    axis([0 width 0 height]);
    
    while 1
        [a,b,BUTTON] = ginput(1);
        if BUTTON == 1
            x = [];
            y = [];
            clf();
            axis([0 width 0 height]);
            break;
        end
    end

    %% GO!
    [x y] = go(20, 60, 10);
    x = x+70;
    y = y+70;
    plot(bdyx, bdyy, '-k', 'LineWidth',3); hold on;
    plot(x, y, '.r', 'MarkerSize', 15);
    axis([0 width 0 height]);

    while 1
        [a,b,BUTTON] = ginput(1);
        if BUTTON == 1
            x = [];
            y = [];
            clf();
            axis([0 width 0 height]);
            break;
        end
    end

    %% start playing

%     x = [ 70  70  80  80  70  60  50];
%     y = [100 110 110 100 100 100 100];
    x = [ 80  70  60  50];
    y = [100 100 100 100];
    
    direc = 4;
    speed = 0.3;
    cookie = [int32(rand(1)*18)*10+10 int32(rand(1)*18)*10+10];
    
    while 1
        clf(); hold on;
        
        plot(bdyx, bdyy, '-k', 'LineWidth',3);
        plot(x, y, '.-k', 'MarkerSize', 30, 'LineWidth',3);
        plot(x(1), y(1), '.k', 'MarkerSize', 40);
        plot(cookie(1), cookie(2), '.r', 'MarkerSize', 30);
        axis([0 width 0 height]);
        
        over = checkover();
        
        set(gcf,'KeyPressFcn', @kpfcn);
        snakemove();
        
        if x(1)<0 || x(1)>width || y(1)<0 || y(1)>height
            over = 1;
        end
        if over == 1
            [a b] = gameover(18, 60, 5);
            a = a+10.5;
            b = b+70;
            plot(a, b, '.r', 'MarkerSize', 15);
            break;
        end
        pause(speed);
    end
end






