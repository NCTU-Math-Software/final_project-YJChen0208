function over = checkover()
%   check if the snake has bump into itself
% 
    global x;
    global y;
    
    findx = find(x==x(1));
	findy = find(y==y(1));
    over = 0;
	for k = 2:size(findx, 2)
        findp = find(findy==findx(k));
        if size(findp, 2) > 0
            over = 1;
            break;
        end
    end
	
end