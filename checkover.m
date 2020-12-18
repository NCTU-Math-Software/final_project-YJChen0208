function over = checkover()
% The function is use to Check if the snake has bump into itself. If it has, return 1, if not, return 0.
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