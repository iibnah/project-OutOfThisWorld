public enum GameState {
    INTRO,
    PLANET0,
    PLANET0EPIL,
    PLANET1,
    PLANET1EPIL,
    PLANET2,
    PLANET2EPIL,
    ENDING
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
      handlePlanet0Input();
      break;
    case PLANET0EPIL:
      handlePlanet0EpilInput();
      break;
    case PLANET1:
      handlePlanet1Input();
      break;
     case PLANET1EPIL:
      handlePlanet1EpilInput();
      break;
    case PLANET2:
      handlePlanet2Input();
      break;
     case PLANET2EPIL:
      handlePlanet2EpilInput();
      break;
    //case ENDING:
    //  // Handle user input for the ending
    //  handleEndingInput();
    //  break;
    default: 
      System.out.println("Not Working!");
  }
}

void handlePlanet0Input() {
  //maze controls
  if (planet0Index == 20) {
    if (!gameOver) {
    mazeInput(maze0);
    }
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
    if (planet0EpilIndex == planet0EpilPages.length - 1) {
      ChoicePage joinSenhar = new ChoicePage(35, new String[] {"You decide to: ", "join her", "refuse"}, "Scenes\\planet00ba.png", new Page[] {}, new Page[] {});
      planet1 = new Planet1(blub);
      planet1Pages = planet1.pages;
      planet1EpilPages = planet1.epilScene;
      currentState = GameState.PLANET1;
      System.out.println(currentState);
      planet0EpilIndex = 0; 
    }
    else {
      planet0EpilIndex++; 
      System.out.println(planet0EpilIndex);
    }
  } 
}

void handlePlanet1Input() {
    //maze controls
  if (planet1Index == 19) {
    mazeInput(maze1);
  }
  //choice page
  else if (planet1Index == 35) {
    if (keyCode == UP)        joinSenhar.pickChoice1();
    else if (keyCode == DOWN) joinSenhar.pickChoice2();
    
    else if (key == ENTER) {
        if (joinSenhar.getChoice() == 1)       planet1Index++; 
        else if (joinSenhar.getChoice() == 2) {
          currentState = GameState.PLANET2EPIL; 
          System.out.print(currentState);
        }
   }
  }
  //default progression
  else if (key == ' ') {
    if (planet1Index == planet1Pages.length - 1) { 
      currentState = GameState.ENDING;
      planet1Index = 0; 
    }
    else {
      planet1Index++; 
      System.out.println(planet1Index);
    }
  }  
}

void handlePlanet1EpilInput() {
  if (key == ' ') {
    if (planet1EpilIndex == planet1EpilPages.length - 1) {
      ChoicePage joinVastu = new ChoicePage(28, new String[] {"You decide to: ", "join him", "refuse"}, "Scenes\\planet02ba.png", new Page[] {}, new Page[] {});
      planet2 = new Planet2(blub);
      planet2Pages = planet2.pages;
      planet2EpilPages = planet2.epilScene;
      currentState = GameState.PLANET2;
      System.out.println(currentState);
      planet1EpilIndex = 0; 
    }
    else {
      planet1EpilIndex++; 
      System.out.println(planet1EpilIndex);
    }
  } 
}

void handlePlanet2Input()     {

  //maze controls
  if (planet2Index == 21) {
    mazeInput(maze2);
  }
  //choice page
  else if (planet2Index == 28) {
    if (keyCode == UP)        joinVastu.pickChoice1();
    else if (keyCode == DOWN) joinVastu.pickChoice2();
    
    else if (key == ENTER) {
        if (joinVastu.getChoice() == 1)       planet2Index++; 
        else if (joinVastu.getChoice() == 2) {
          currentState = GameState.PLANET2EPIL; 
          System.out.print(currentState);
        }
   }
  }
  //default progression
  else if (key == ' ') {
    if (planet2Index == planet2Pages.length - 1) { 
      currentState = GameState.ENDING;
      planet1Index = 0; 
    }
    else {
      planet2Index++; 
      System.out.println(planet2Index);
    }
  }
}

void handlePlanet2EpilInput() {}
