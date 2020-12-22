# 貪食蛇

## The main funtion of my project - `Snake.m`
### How to Run
1. Download all file in a folder
2. use MATLAB to run `Snake.m` **(MATLAB Version 2019b)**
    ``` matlab
    >> Snake()
    ```
3. Press `C` to exit.

### Procedure
1. Show "READY?" in figure.
Press `left mouse` if you are ready, or press `right mouse` or `C` to exit.
2. Show "GO!" in figure.
Press `left mouse` and start playing, or press `right mouse` or `C` to exit.
5. while playing :
    - You can use `arrow key` to control the direction of snake and eat cookie, the score will show on the top of figure.
    - If the snake dump into itself or out of the boundary, you lose the game and the figure will show "GAMEOVER" word.
    - You can press `C` to exit the game, or press `space` to stop, press `space` again to continue the game.

## Subprogram
### `ready.m`
```
[x y] = ready(w, h, gap)
```
The output is the `[x y]` array that can be plot to display "READY?".
![](https://i.imgur.com/YusBVCr.png)

About input :
- Input `w` is the width of a word, it must be divided by 2.
- Input `h` is the height of a word, it must be divided by 12.
- Input `gap` is the gap between each words, it has no restriction.

The total width of "READY?" is `(w+gap)*5+w`.

#### Example:
You can get the return value by
``` matlab
[x y] = ready(108, 200, 25);
[x y] = ready(20, 60, 10);
```
and draw it by
``` matlab
plot(x, y, '.r');
```

### `go.m`
```
[x y] = go(w, h, gap)
```
The output is the `[x y]` array that can be plot to display "GO!".
![](https://i.imgur.com/xRBaNnY.png)

About input :
- Input `w` is the width of a word, it must be divided by 2.
- Input `h` is the height of a word, it must be divided by 12.
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

### `gameover.m`
```
[x y] = gameover(w, h, gap)
```
The output is the `[x y]` array that can be plot to display "GAMEOVER".
![](https://i.imgur.com/0cXApl0.png)

About input :
- Input `w` is the width of a word, it must be divided by 2.
- Input `h` is the height of a word, it must be divided by 2.
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

### `stopword.m`
```matlab
[x y] = stopword(w, h, gap)
```
The output is the `[x y]` array that can be plot to display "STOP".
![](https://i.imgur.com/OOc4gfd.png)

About input :
- Input `w` is the width of a word, it must be divided by 2.
- Input `h` is the height of a word, it must be divided by 2.
- Input `gap` is the gap between each words, it has no restriction.

The total width of "STOP" is `(w+gap)*3+w`.
#### Example:
You can get the return value by
``` matlab
[x, y] = stopword(18, 60, 5);
```
and draw it by
``` matlab
plot(x, y, '.g');
```

### `calpol.m`
```
[fx, fy, plotx, ploty] = calpol(oldx, oldy, a)
```
將舊的位置與新的位置之間分割成10份，計算出與第 a 份 (`[plotx, ploty]`) 的點最符合的曲線 (`[fx, fy]`)。

### `geneCookie.m`
Create a cookie and make it away from snake.

### `kpfcn.m`
The function can change direction of snake according to your keypress.
The main process call `set(gcf,'KeyPressFcn', @kpfcn)` in a while loop, and the variable `direc` will change if you press any `arrow key` while you are in that loop.

### `snakemove.m`
The function is use to control the move of snake according to `direc` variable by adjusting the `x` `y` value.
It also check if the snake has eat the cookie.

### `checkover.m`
The function is use to Check if the snake has bump into itself. If it has, return 1, if not, return 0.

## Note
If subprogram has use any **`global`** variable, it should be defined in both main and subprogram.

###### Reference : [多重案件處理](https://yuchungchuang.wordpress.com/2017/08/07/matlab-%E5%A4%9A%E9%87%8D%E6%8C%89%E9%8D%B5%E4%BA%8B%E4%BB%B6%E7%9A%84%E8%99%95%E7%90%86keypressfcn/), chebsnake
