function kpfcn(fig,event, keyData)
% The function can change direction of snake according to your keypress.
% You can call `set(gcf,'KeyPressFcn', @kpfcn)` in your main function to change the variable `direc` by keypress.
% 

%     disp(event.Key)
    global direc;
    global stop;
    global dirset;
    
    switch event.Key
        case 'uparrow'
            if direc ~= 2 && dirset == 0
                direc = 1;
                dirset = 1;
            end
        case 'downarrow'
            if direc ~= 1 && dirset == 0
                direc = 2;
                dirset = 1;
            end
        case 'leftarrow'
            if direc ~= 4 && dirset == 0
                direc = 3;
                dirset = 1;
            end
        case 'rightarrow'
            if direc ~= 3 && dirset == 0
                direc = 4;
                dirset = 1;
            end
        case 'c'
            if dirset == 0
                direc = -1;
                dirset = 1;
            end
        case 'space'
            if dirset == 0
                stop = 1;
                dirset = 1;
            end
   end
    
end