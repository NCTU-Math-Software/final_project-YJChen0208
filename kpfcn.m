function kpfcn(fig,event)
%   The function can change direction of snake according to your keypress
%   The global variable must be define in main function too.
%   you call
%       set(gcf,'KeyPressFcn', @kpfcn);
%   to change the variable `direc` by keypress in your main function.
% 
    global direc;
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