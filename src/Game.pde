public enum GameState {
    INTRO,
    PLANET0,
    PLANET0EPIL,
    PLANET1,
    PLANET1EPIL,
    PLANET2,
    PLANET2EPIL,
    GOODENDING,
    BADENDING
}

GameState currentState;
String blub = "";

int introPageIndex = 0;
int planet0Index = 0;
int planet0EpilIndex = 0;
int planet1Index = 0;
int planet1EpilIndex = 0;
int planet2Index = 0;
int planet2EpilIndex = 0;

Planet0 planet0;
Planet1 planet1;
Planet2 planet2;

Page[] introPages;
Page[] planet0Pages;
Page[] planet0EpilPages;
Page[] planet1Pages;
Page[] planet1EpilPages;
Page[] planet2Pages;
Page[] planet2EpilPages;

ChoicePage planet0land;
ChoicePage joinLyn;
ChoicePage joinSenhar;
ChoicePage joinVastu;

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
        planet0.renderPlanetEpil();
        break;
      case PLANET1:
        planet1.renderPlanet();
        break;
      case PLANET1EPIL:
        planet1.renderPlanetEpil();
        break;
      case PLANET2:
        planet2.renderPlanet();
        break;
      case PLANET2EPIL:
        planet2.renderPlanetEpil();
        break;
      case GOODENDING:
        renderGoodEnding();
        break;
      case BADENDING:
        renderBadEnding();
        break;  
    }
}

void resetFont() {
  textAlign(CENTER, CENTER);
  textSize(10);
}

void renderPlanet1() {}
void renderPlanet2() {}

void renderGoodEnding()  {
   Page endScreen = new Page(0, new String[] {"Having found their true belonging, " + blub + " stayed on their newly found home, living there happily ever after..."}, "Scenes\\TitleScreen.png");
   endScreen.displayPage();
}

void renderBadEnding()  {
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
      planet0.handlePlanetInput();
      break;
    case PLANET0EPIL:
      planet0.handlePlanetEpilInput();
      break;
    case PLANET1:
      planet1.handlePlanetInput();
      break;
     case PLANET1EPIL:
      planet1.handlePlanetEpilInput();
      break;
    case PLANET2:
      planet2.handlePlanetInput();
      break;
     case PLANET2EPIL:
      planet2.handlePlanetEpilInput();
      break;
    //case ENDING:
    //  // Handle user input for the ending
    //  handleEndingInput();
    //  break;
    default: 
      System.out.println("Not Working!");
  }
}
