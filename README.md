# 貪食蛇

## The process of main function - `Snake.m`
1. Show "READY?" in figure.
2. Press `left mouse` if you are ready, or press `right mouse` to exit.
3. Show "GO!" in figure.
4. Press `left mouse` and start playing, or press `right mouse` to exit.
5. while playing :
    - You can use `arrow key` to control the direction of snake.
    - If you dump into itself or out of the boundary, you lose the game ( the figure will show "GAMEOVER" word).
    - You can press `c` to exit the game, or press `space` to stop, press `space` again to continue the game.
## Subfunction
### ready.m
The output is the `[x y]` array that can be plot to display "READY?".

About input :
- Input `h` is the height of a word, it must be divided by 12.
- Input `w` is the width of a word, it must be divided by 2.
- Input `gap` is the gap between each words, it has no restriction.

The total width of "READY?" is `(w+gap)*5+w`.

#### Example:
You can get the return value by
```matlab
[x y] = ready(108, 200, 25);
[x y] = ready(20, 60, 10);
```
and draw it by
``` matlab
plot(x, y, '.r');
```

### go.m
The output is the `[x y]` array that can be plot to display "GO!".

About input :
- Input `h` is the height of a word, it must be divided by 12.
- Input `w` is the width of a word, it must be divided by 2.
- Input `gap` is the gap between each words, it has no restriction.

The total width of "GO!" is `(w+gap)*2`.

#### Example:
You can get the return value by
``` matlab
[x y] = go(108, 200, 25);
[x y] = go(20, 60, 10);
```
and draw it by
``` matlab
plot(x, y, '.r');
```
### gameover.m
The output is the `[x y]` array that can be plot to display "GAMEOVER".

About input :
- Input `h` is the height of a word, it must be divided by 2.
- Input `w` is the width of a word, it must be divided by 2.
- Input `gap` is the gap between each words, it has no restriction.

The total width of "GAMEOVER" is `(w+gap)*7+w`.

#### Example:
You can get the return value by
``` matlab
[x y] = gameover(108, 200, 25);
[x y] = gameover(18, 60, 5);
```
and draw it by
``` matlab
plot(x, y, '.r');
```

### kpfcn.m
The function can change direction of snake according to your keypress.
You can call `set(gcf,'KeyPressFcn', @kpfcn)` in your main function to change the variable `direc` by keypress.

### snakemove.m
The function is use to control the move of snake according to `direc` variable by adjusting the `x` `y` value.
It also check if the snake has eat the cookie.

### checkover.m
The function is use to Check if the snake has bump into itself. If it has, return 1, if not, return 0.



###### Reference : [多重案件處理](https://yuchungchuang.wordpress.com/2017/08/07/matlab-%E5%A4%9A%E9%87%8D%E6%8C%89%E9%8D%B5%E4%BA%8B%E4%BB%B6%E7%9A%84%E8%99%95%E7%90%86keypressfcn/)
