public enum GameState {
    INTRO,
    PLANET0,
    PLANET1,
    PLANET2,
    ENDING
}

GameState gameState = GameState.INTRO;
PImage bg; 

public void setup() {
    size(720,480);
    bg = loadImage("Scenes\TitleScreen.png");
}

public void draw() {
    background(bg);
    frameRate(24);
    noStroke();
    fill(255);
    textAlign(CENTER, CENTER);
    text("Project-OutOfThisWorld", width/2, height/2);
}
