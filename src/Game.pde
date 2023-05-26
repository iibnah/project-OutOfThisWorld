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
PFont myFont;

    
Page[] introPages;

public void setup() {
    //game setup
    size(720,480);
    frameRate(24);
    currentState = GameState.INTRO;
    //font setup
    myFont = createFont("Courier New Bold", 10);
    textFont(myFont);
    
    introPages = new Page[] {new Page(0, new String[] {"Project-OutOfThisWorld \n Created by Richie Xue, Intia Ibnah"}, "Scenes\\TitleScreen.png"),
                             new Page(1, new String[] {"Hola! Ohaiyo! Como estas!"}, "Scenes\\TitleScreen.png"),
                             new Page(2, new String[] {"Now, " + blub + " let’s try to find the perfect planet to live on!"}, "Scenes\\TitleScreen.png")
                             new Page(3, new String[] {"With your astute sense of curiosity, you set off on an adventure away from home, hoping to explore all that space has to offer. Surely there is someplace that will satisfy your curiosity, right? Lets get started, shall we?"}, "Scenes\\TitleScreen.png")
                             new Page(4, new String[] {"Stumbles onto Planet00:\nArriving at Planet00: Lathea. A lush and vibrant planet with dense forests and a mild climate, Lathea is quite similar to South America. However, the planet is known for its unpredictable weather patterns, with sudden storms and strong winds leading to catastrophic storms. The planet also holds ancient ruins and hidden treasures, attracting acquisitive explorers…"}, "Scenes\\TitleScreen.png"),
                             new Page(5, new String[] {"You decide to:"}, "Scenes\\TitleScreen.png"),  
                           };
    
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
    if (introPageIndex ==2) {
      background(bg);
      textAlign(CENTER, CENTER);
      textSize(20);
      text("Before we start, what would you like to be called?", width/2, height/2 - 20);
      textSize(30);
      text("Name:" + blub, width/2, height/2 + 20);  
    }
    else 
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
  if (introPageIndex == 2) {
    if (key != ENTER && key != BACKSPACE)           blub += key;
    else if (key == BACKSPACE && blub.length() > 0) blub = blub.substring(0, blub.length() - 1);
    else if (key == ENTER)                          introPageIndex++; 
  }
  if 
  else if (key == ' ') {
    if (introPageIndex >= introPages.length) {
      currentState = GameState.PLANET0;
      introPageIndex = 0; // Reset the introPageIndex for future use
    }
    introPageIndex++;
    }
}
