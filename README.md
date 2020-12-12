# 貪食蛇
The main function of my project is `Snake.m`

## The process of `Snake.m`
- show "ready" words
- press left mouse if you are ready, or press right mouse to exit
- show "go" words
- press left mouse and start playing, or press right mouse to exit
- while playing
    - you can use arrow key to control the direction of snake
    - if you dump into itself or out of the boundary, you lose the game ( the figure will show "GAMEOVER" word)
    - you can press `c` to exit the game, or press `space` to stop, press `space` again to continue the game
## Subfunction
### ready.m
The output is the x y array that can be plot to display "READY?"
The input has some restriction :
- h is the height of a word, it must be divided by 12
- w is the width of a word, it must be divided by 2
- gap is the gap between each words, it has no restriction

The total width of "READY?" is (w+gap)*5+w

Example:
you can get the return value by :
``` matlab=
[x y] = ready(108, 200, 25);
[x y] = ready(20, 60, 10);
```
and draw it by:
``` matlab=
plot(x, y, '.r');
```

### go.m
The output is the x y array that can be plot to display "GO!"
The input has some restriction :
- h is the height of a word, it must be divided by 12
- w is the width of a word, it must be divided by 2
- gap is the gap between each words, it has no restriction

The total width of "GO!" is (w+gap)*2

Example:
you can get the return value by :
``` matlab=
[x y] = go(108, 200, 25);
[x y] = go(20, 60, 10);
```
and draw it by:
``` matlab=
plot(x, y, '.r');
```
### gameover.m
The output is the x y array that can be plot to display "GAMEOVER"
The input has some restriction :
- h is the height of a word, it must be divided by 2
- w is the width of a word, it must be divided by 2
- gap is the gap between each words, it has no restriction

The total width of "GAMEOVER!" is (w+gap)*7+w.

Example:
you can get the return value by :
``` matlab=
[x y] = gameover(108, 200, 25);
[x y] = gameover(18, 60, 5);
```
and draw it by:
``` matlab=
plot(x, y, '.r');
```

### kpfcn.m
the function can change direction of snake according to your keypress
the global variable must be define in main function too.
you can call `set(gcf,'KeyPressFcn', @kpfcn);` in your main function
to change the variable `direc` by keypress

### snakemove.m
The function is use to control the move of snake according to `direc` variable, and also check if the snake has eat the cookie.

### checkover.m
check if the snake has bump into itself
if it has, return 1, if not, return 0

###### Reference : [多重案件處理](https://yuchungchuang.wordpress.com/2017/08/07/matlab-%E5%A4%9A%E9%87%8D%E6%8C%89%E9%8D%B5%E4%BA%8B%E4%BB%B6%E7%9A%84%E8%99%95%E7%90%86keypressfcn/)
