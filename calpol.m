function [fx, fy, plotx, ploty] = calpol(oldx, oldy, a)
    global x;
    global y;
    xsize = size(x, 2)-1;
    t = 0 : xsize;
    plotx = (x-oldx)*a/10+oldx;
    ploty = (y-oldy)*a/10+oldy;
    px = polyfit(t, plotx, xsize);
    py = polyfit(t, ploty, xsize);
    tt = linspace(0, xsize);
    fx = polyval(px, tt);
    fy = polyval(py, tt);
end