public enum GameState {
    INTRO,
    PLANET0,
    PLANET0EPIL,
    PLANET1,
    PLANET2,
    ENDING
}

GameState currentState;
String blub = "";

int introPageIndex = 0;
int planet0Index = 0;
int planet0EpilIndex = 0;
int planet1Index = 0;
int planet2Index = 0;


Planet0 planet0;

Page[] introPages;
Page[] planet0Pages;
Page[] planet0EpilPages;

ChoicePage planet0land;
ChoicePage joinLyn;

public void setup() {
    //game setup
    size(720,480);
    frameRate(60);
    currentState = GameState.INTRO; 
}

public void draw() {
    switch (currentState) {
      case INTRO:          
        renderIntro();
        break;
      case PLANET0:
        planet0.renderPlanet();
        break;
      case PLANET0EPIL:
        renderPlanet0Epil();
      case PLANET1:
        renderPlanet1();
        break;
      case PLANET2:
        renderPlanet2();
        break;
      case ENDING:
        renderEnding();
        break;
    }
}

void resetFont() {
  textAlign(CENTER, CENTER);
  textSize(10);
}

void renderPlanet1() {}
void renderPlanet2() {}

void renderEnding()  {
   Page endScreen = new Page(0, new String[] {"Having never found their true belonging, " + blub + " continued venturing throughout the galaxy, searching for a home. While a part of their journey was documented here, their fate remains a mystery for ages..."}, "Scenes\\TitleScreen.png");
   endScreen.displayPage();
}

// Event handlers
public void keyPressed() {
  switch (currentState) {
    case INTRO:
      handleIntroInput();
      break;
    case PLANET0:
      planet0.handleInput();
      break;
    case PLANET0EPIL:
      handlePlanet0EpilInput();
      break;
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

void handleInput() {
  //maze controls
  if (planet0Index == 20) {
    mazeInput();
  }
  //choice page
  else if (planet0Index == 37) {
    if (keyCode == UP)        joinLyn.pickChoice1();
    else if (keyCode == DOWN) joinLyn.pickChoice2();
    
    else if (key == ENTER) {
        if (joinLyn.getChoice() == 1)              planet0Index++; 
        else if (joinLyn.getChoice() == 2) {
          currentState = GameState.PLANET0EPIL; 
          System.out.print(currentState);
       }
    }
  }
  //default progression
  else if (key == ' ') {
    if (planet0Index == planet0Pages.length - 1) { 
      currentState = GameState.ENDING;
      planet0Index = 0; 
    }
    else {
      planet0Index++; 
      System.out.println(planet0Index);
    }
  }  
}

void handlePlanet0EpilInput() {
  if (key == ' ') {
    if (planet0EpilIndex == planet0EpilPages.length) { 
      currentState = GameState.PLANET1;
      planet0EpilIndex = 0; 
    }
    else {
      planet0EpilIndex++; 
      System.out.println(planet0EpilIndex);
    }
  } 
}
