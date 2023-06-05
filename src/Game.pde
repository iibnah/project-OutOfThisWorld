public enum GameState {
    INTRO,
    PLANET0,
    PLANET1,
    PLANET2,
    ENDING
}

GameState currentState;

PImage bg; 

int introPageIndex = 0;
int planet0Index = 0;
int planet1Index = 0;
int planet2Index = 0;

String blub = "";

ChoicePage planet0land;    
Page[] introPages;
Page[] planet0pages;

public void setup() {
    //game setup
    size(720,480);
    frameRate(24);
    currentState = GameState.INTRO;
}

public void draw() {
    switch (currentState) {
      case INTRO:          
      planet0land = new ChoicePage(5, new String[] {"Will you:", "Land on Lathea?", "Move on?"}, "Scenes\\TitleScreen.png", new Page[] {}, new Page[] {});  
    
      introPages = new Page[] {new Page(0, new String[] {"Project-OutOfThisWorld \n Created by Richie Xue, Intia Ibnah"}, "Scenes\\TitleScreen.png"),
                               new Page(1, new String[] {"Hola! Ohaiyo! Como estas!"}, "Scenes\\TitleScreen.png"),
                               new Page(2, new String[] {}, "Scenes\\TitleScreen.png"), 
                               new Page(3, new String[] {"Now, " + blub + " let's try to find the perfect planet to live on!"}, "Scenes\\TitleScreen.png"),
                               new Page(4, new String[] {"You stumble upon Planet00: Arriving at Lathea, a lush and vibrant planet with dense forests and a mild climate, Lathea is quite similar to South America. However, the planet is known for its unpredictable weather patterns, with sudden storms and strong winds leading to catastrophic storms. The planet also holds ancient ruins and hidden treasures, attracting acquisitive explorers…"}, "Scenes\\TitleScreen.png"),  
                               planet0land
                             };
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
        renderEnding();
        break;
    }
}

void resetFont() {
  textAlign(CENTER, CENTER);
  textSize(10);
}


void renderIntro()   {
    //name creation page 
    if (introPageIndex == 2) {
      background(#000000);
      textAlign(CENTER, CENTER);
      textSize(20);
      text("Before we start, what would you like to be called?", width/2, height/2 - 20);
      textSize(30);
      text("Name:" + blub, width/2, height/2 + 20);  
    }
    else {
      resetFont(); 
      introPages[introPageIndex].displayPage();
    }
}

void renderPlanet0() {
    resetFont(); 
    planet0pages[planet0Index].displayPage();
}

void renderPlanet1() {}
void renderPlanet2() {}
void renderEnding()  {}

// Event handlers
public void keyPressed() {
  switch (currentState) {
    case INTRO:
      handleIntroInput();
      break;
    case PLANET0:
      handlePlanet0Input();
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

void handleIntroInput() {
  //name creation page
  if (introPageIndex == 2) {
    if (key != ENTER && key != BACKSPACE && keyCode != SHIFT)  blub += key;                      
    else if (key == BACKSPACE && blub.length() > 0)            blub = blub.substring(0, blub.length() - 1);
    else if (key == ENTER)                                     introPageIndex++; 
  }
  
  //choice page
  else if (introPageIndex == 5) {
    if (keyCode == UP)        planet0land.pickChoice1();
    else if (keyCode == DOWN) planet0land.pickChoice2();
    else if (key == ENTER) {
        if (planet0land.getChoice() == 1)      {currentState = GameState.PLANET0; Planet0 planet0 = new Planet0(blub); planet0pages = planet0.pages; System.out.print(currentState);}
        else if (planet0land.getChoice() == 2) {currentState = GameState.PLANET1; System.out.print(currentState);}
    }
    
  //default progression 
  } 
  else if (key == ' ') {
    if (introPageIndex >= introPages.length) {
      currentState = GameState.PLANET0;
      introPageIndex = 0; 
    }
    introPageIndex++;
  }
}

void handlePlanet0Input() {
  if (key == ' ') {
    if (planet0Index >= planet0pages.length) {
      currentState = GameState.PLANET2;
      planet0Index = 0; 
    }
    planet0Index++;
  }  
}
