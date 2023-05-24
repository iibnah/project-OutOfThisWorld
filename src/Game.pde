public enum GameState {
    INTRO,
    PLANET0,
    PLANET1,
    PLANET2,
    ENDING
}

GameState currentState;
PImage bg; 

public void setup() {
    size(720,480);
    bg = loadImage("Scenes\\TitleScreen.png");
    currentState = GameState.INTRO;
}

public void draw() {
    background(bg);
    frameRate(24);
    noStroke();
    fill(255);
    textAlign(CENTER, CENTER);
    text("Project-OutOfThisWorld", width/2, height/2 + 50);
    text("Created by Richie Xue, Intia Ibnah", width/2, height/2 + 60);
    switch (currentState) {
      case INTRO:
        renderIntro();
        break;
      case PLANET0:
        renderPlanet0();
        break;
      case PLANET1:
        renderPlanet1();
        break;
      case PLANET2:
        renderPlanet2();
        break;
      case ENDING:
        // Render the game ending
        renderEnding();
        break;
    }
}
    
void renderIntro()   {}
void renderPlanet0() {}
void renderPlanet1() {}
void renderPlanet2() {}
void renderEnding()  {}

// Event handlers
public void keyPressed() {
  switch (currentState) {
    case INTRO:
      // Handle user input for Intro
      handleIntroInput();
      break;
    case PLANET0:
      // Handle user input for Planet0
      handlePlanet0Input();
      break;
    case PLANET1:
      // Handle user input for Planet1
      handlePlanet1Input();
      break;
    case PLANET2:
      // Handle user input for Planet2
      handlePlanet2Input();
      break;
    case ENDING:
      // Handle user input for the ending
      handleEndingInput();
      break;
  }
}

void mousePressed() {
    mouseClicked = true;
}

void handleIntroInput()   {
  if (key == ' ') {
    spacePressed = true;
  }
  if (mouseClicked) {
    currentState = GameState.PLANET_1;
    mouseClicked = false;
}
void handlePlanet0Input() {}
void handlePlanet1Input() {}
void handlePlanet2Input() {}
void handleEndingInput()  {}
