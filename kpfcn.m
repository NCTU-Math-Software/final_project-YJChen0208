function kpfcn(fig,event, keyData)
% The function can change direction of snake according to your keypress.
% You can call `set(gcf,'KeyPressFcn', @kpfcn)` in your main function to change the variable `direc` by keypress.
% 

%     disp(event.Key)
    global direc;
    global stop;
    
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
        case 'c'
            direc = -1;
        case 'space'
            stop = 1;
   end
    
end