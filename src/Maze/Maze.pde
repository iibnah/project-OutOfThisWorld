int[][] maze = new int[][]  {
            {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
            {1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
            {1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 0, 1},
            {1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1},
            {1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 1, 0, 1},
            {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1},
            {1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1},
            {1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1},
            {1, 0, 0, 0, 1, 0, 1, 1, 1, 1, 1, 0, 0, 1, 0, 1, 0, 1},
            {1, 1, 1, 0, 1, 0, 1, 0, 0, 0, 1, 1, 0, 1, 0, 1, 0, 1},
            {1, 2, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 1, 0, 1, 0, 1},
            {1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 1, 0, 1, 0, 1},
    };

public boolean gameOver;
int blockSize = 40; // Size of each maze block
int mazeW = maze[0].length; // Width of the maze in blocks
int mazeH = maze.length; // Height of the maze in blocks

int px = 1; 
int py = 1; 

@Override
public void setup() {
    frameRate(24);
    size(720, 480);
    background(255);
    gameOver = false;
}

@Override
public void draw() {
    //maze draw 
    /* 
      0 = grass path, 
      1 = stone walls, 
      2 = golden exit 
    */
    for (int y = 0; y < mazeH; y++) {
        for (int x = 0; x < mazeW; x++) {
            if (maze[y][x] == 0)      fill(34,139,34);
            else if (maze[y][x] == 1) fill(119,136,153);
            else if (maze[y][x] == 2) fill(255,255,0);
            rect(x * blockSize, y * blockSize, blockSize, blockSize);
        }
    }   
    //player
    fill(255, 0, 0); 
    rect(px * blockSize, py * blockSize, blockSize, blockSize);
    
    //check end
    if (maze[py][px] == 2) {
            gameOver = true;
            return; // Return to stop further drawing
        }
    
}

@Override
public void keyPressed() {
    if (keyCode == UP && py > 0 && maze[py - 1][px] == 0)                py--;
    else if (keyCode == DOWN && py < mazeH - 1 && maze[py + 1][px] == 0) py++;
    else if (keyCode == LEFT && px > 0 && maze[py][px - 1] == 0)         px--;
    else if (keyCode == RIGHT && px < mazeW - 1 && maze[py][px + 1] == 0)px++;
}
