function geneCookie()
    global cookie
    global x;
    global y;
    
    while 1
        cookie = [int32(rand(1)*18)*10+10 int32(rand(1)*18)*10+10];
        findx = find(x==cookie(1));
        findy = find(y==cookie(2));
        for k = 1:size(findx, 2)
            findp = find(findy==findx(k));
%           if cookie is set on snake body, then regenerate a cookie
            if size(findp, 2) == 0
                return;
            end
        end
    end
end