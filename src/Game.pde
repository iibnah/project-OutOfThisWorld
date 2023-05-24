public enum GameState {
    INTRO,
    PLANET0,
    PLANET1,
    PLANET2,
    ENDING
}

GameState currentState;
PImage bg; 
int introPageIndex;

    
Page[] introPages;

public void setup() {
    size(720,480);
    bg = loadImage("Scenes\\TitleScreen.png");
    currentState = GameState.INTRO;
    frameRate(24);
    introPageIndex = 0;
    
    introPages = new Page[] {new Page(0, new String[] {"Project-OutOfThisWorld \n Created by Richie Xue, Intia Ibnah"}, "Scenes\\TitleScreen.png"),
                                new Page(1, new String[] {"Hola! Como estas!"}, "Scenes\\TitleScreen.png")};
}

public void draw() {
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
    
void renderIntro()   {
    introPages[introPageIndex].displayPage();
}
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
    //case PLANET0:
    //  // Handle user input for Planet0
    //  handlePlanet0Input();
    //  break;
    //case PLANET1:
    //  // Handle user input for Planet1
    //  handlePlanet1Input();
    //  break;
    //case PLANET2:
    //  // Handle user input for Planet2
    //  handlePlanet2Input();
    //  break;
    //case ENDING:
    //  // Handle user input for the ending
    //  handleEndingInput();
    //  break;
    default: 
      System.out.println("Not Working!");
  }
}

void handleIntroInput() {
  if (key == ' ') {
    // If space bar is pressed, increment the introPageIndex to move to the next page
    introPageIndex++;
    
    // Check if the introPageIndex exceeds the number of intro pages
    // If so, transition to the next game state (Planet0) and reset the introPageIndex
    if (introPageIndex >= introPages.length) {
      currentState = GameState.PLANET0;
      introPageIndex = 0; // Reset the introPageIndex for future use
    }
  }
}
