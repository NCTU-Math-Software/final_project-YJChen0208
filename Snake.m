function main()
	width = 200;
    height = 200;
    bdyx = [0 0 200 200 0];
    bdyy = [0 200 200 0 0];
    clf();
    axis([0 width 0 height]);
    global x;
    global y;

    %%  READY ?
    % R
    x = [ones(1, 140-80+1)*30];
    y = [80:140];
    x = [x 30:50];
    y = [y ones(1, 50-30+1)*140];
    x = [x ones(1, 140-110+1)*50];
    y = [y 110:140];
    x = [x 30:50];
    y = [y ones(1, 50-30+1)*110];
    x = [x 40:0.4:50];
    y = [y 110:-1.2:80];
    % E
    x = [x ones(1, 140-80+1)*60];
    y = [y 80:140];
    x = [x 60:80];
    y = [y ones(1, 80-60+1)*140];
    x = [x 60:80];
    y = [y ones(1, 80-60+1)*110];
    x = [x 60:80];
    y = [y ones(1, 80-60+1)*80];
    % A
    x = [x 90:0.1:100];
    y = [y 80:0.6:140];
    x = [x 100:0.1:110];
    y = [y 140:-0.6:80];
    x = [x 90:110];
    y = [y ones(1, 110-90+1)*110];
    % D
    x = [x ones(1, 140-80+1)*120];
    y = [y 80:140];
    x = [x 120:130];
    y = [y ones(1, 130-120+1)*140];
    x = [x 120:130];
    y = [y ones(1, 130-120+1)*80];
    x = [x 130:0.3:140];
    y = [y 140:-0.6:120];
    x = [x 130:0.3:140];
    y = [y 80:0.6:100];
    x = [x ones(1, 120-100+1)*140];
    y = [y 100:120];
    % Y
    x = [x 150:0.3:160];
    y = [y 140:-0.9:110];
    x = [x 160:0.3:170];
    y = [y 110:0.9:140];
    x = [x ones(1, 110-80+1)*160];
    y = [y 80:110];
    % ?
    x = [x ones(1, 140-120+1)*180];
    y = [y 120:140];
    x = [x 180:200];
    y = [y ones(1, 200-180+1)*140];
    x = [x ones(1, 140-120+1)*200];
    y = [y 120:140];
    x = [x 200:-1:190];
    y = [y 120:-1:110];
    x = [x ones(1, 110-95+1)*190];
    y = [y 95:110];
    x = [x ones(1, 90-80+1)*190];
    y = [y 80:90];

    x = x -15;
    y = y - 10;
    plot(bdyx, bdyy, '-k', 'LineWidth',3); hold on;
    plot(x, y, '.r');
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
    % G
    x = [ones(1, 140-80+1)*70];
    y = [80:140];
    x = [x 70:90];
    y = [y ones(1, 90-70+1)*140];
    x = [x 70:90];
    y = [y ones(1, 90-70+1)*80];
    x = [x ones(1, 110-80+1)*90];
    y = [y 80:110];
    x = [x 80:90];
    y = [y ones(1, 90-80+1)*110];
    % O
    x = [x ones(1, 140-80+1)*100];
    y = [y 80:140];
    x = [x ones(1, 140-80+1)*120];
    y = [y 80:140];
    y = [y ones(1, 110-90+1)*140];
    x = [x 100:120];
    y = [y ones(1, 110-90+1)*80];
    x = [x 100:120];
    % !
    x = [x ones(1, 140-95+1)*140];
    y = [y 95:140];
    x = [x ones(1, 85-80+1)*140];
    y = [y 80:85];

    x = x-10;
    y = y-10;
    
    plot(bdyx, bdyy, '-k', 'LineWidth',3); hold on;
    plot(x, y, '.r');
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
    
    
    
    x = [100 90 80 70];
    y = [100 100 100 100];
    
    
    global direc;
    global cookie;
    
    direc = 4;
    speed = 0.5;
    
    cookie = [int32(rand(1)*18)*10+10 int32(rand(1)*18)*10+10];
    
    
    while 1
        clf(); hold on;
        
        plot(bdyx, bdyy, '-k', 'LineWidth',3);
        plot(x, y, '.-k', 'MarkerSize', 30, 'LineWidth',3);
        plot(x(1), y(1), '.k', 'MarkerSize', 40);
        plot(cookie(1), cookie(2), '.r', 'MarkerSize', 30);
        axis([0 width 0 height]);

        set(gcf,'KeyPressFcn', @kpfcn);

        snakemove();
        if x(1)<0 || x(1)>200 || y(1)<0 || y(1)>200
            disp('GameOver');
            break;
        end
        
%         findx = find(x==x(1))
%         findy = find(y==y(1))
%         if size(findx, 2) ~= 1 && size(findy, 2) ~= 1
%             disp('error');
%             break;
%         end
        
        pause(speed);
    end
    
    function kpfcn(fig,event)
        switch event.Key
            case 'uparrow'
                if direc ~= 2 
                    direc = 1;
                end
            case 'downarrow'
                if direc ~= 1
                    direc = 2;
                end
            case 'leftarrow'
                if direc ~= 4
                    direc = 3;
                end
            case 'rightarrow'
                if direc ~= 3
                    direc = 4;
                end
        end
    
    end

    function snakemove()
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
%           snake didnt eat cookie so delete last position
            s = size(x,2);
            x(s) = [];
            y(s) = [];
        else
%           Snake eat cookie, add a new cookie
            cookie = [int32(rand(1)*18)*10+10 int32(rand(1)*18)*10+10];
        end
    end
end






