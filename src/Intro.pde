void renderIntro()   {
    planet0land = new ChoicePage(5, new String[] {"Will you:", "Land on Lathea?", "Move on?"}, "Scenes\\TitleScreen.png", new Page[] {}, new Page[] {}); 
    introPages = new Page[] {
           new Page(0, new String[] {"Project-OutOfThisWorld \n Created by Richie Xue, Intia Ibnah"}, "Scenes\\TitleScreen.png"),
           new Page(1, new String[] {"Hola! Ohaiyo! Como estas!"}, "Scenes\\TitleScreen.png"),
           new Page(2, new String[] {}, "Scenes\\TitleScreen.png"), 
           new Page(3, new String[] {"Now, " + blub + " let's try to find the perfect planet to live on!"}, "Scenes\\TitleScreen.png"),
           new Page(4, new String[] {"You stumble upon Planet00: Arriving at Lathea, a lush and vibrant planet with dense forests and a mild climate, Lathea is quite similar to South America. However, the planet is known for its unpredictable weather patterns, with sudden storms and strong winds leading to catastrophic storms. The planet also holds ancient ruins and hidden treasures, attracting acquisitive explorers…"}, "Scenes\\TitleScreen.png"),  
           planet0land
    };
    if (introPageIndex == 2) renderMakeName();
    else {
      resetFont(); 
      introPages[introPageIndex].displayPage();
    }
} 

void renderMakeName() {
      background(#000000);
      textAlign(CENTER, CENTER);
      textSize(20);
      text("Before we start, what would you like to be called?", width/2, height/2 - 20);
      textSize(30);
      text("Name:" + blub, width/2, height/2 + 20); 
}

void nameInput() {
    if (key != ENTER && key != BACKSPACE && keyCode != SHIFT)  blub += key;                      
    else if (key == BACKSPACE && blub.length() > 0)            blub = blub.substring(0, blub.length() - 1);
    else if (key == ENTER)                                     introPageIndex++; 
}

void handleIntroInput() {
  if (introPageIndex == 2) nameInput();
  
  //choice page
  else if (introPageIndex == 5) {
    if (keyCode == UP)        planet0land.pickChoice1();
    else if (keyCode == DOWN) planet0land.pickChoice2();
    
    else if (key == ENTER) {
        if (planet0land.getChoice() == 1)      {
            joinLyn = new ChoicePage(36, new String[] {"You decide to: ", "join them", "refuse"}, "Scenes\\planet00ba.png", new Page[] {}, new Page[] {});
            planet0 = new Planet0(blub);
            planet0Pages = planet0.pages;
            planet0EpilPages = planet0.epilScene;
            currentState = GameState.PLANET0;
            System.out.println(currentState);
        }
        else if (planet0land.getChoice() == 2) {
            joinSenhar = new ChoicePage(35, new String[] {"You decide to: ", "join her", "refuse"}, "Scenes\\planet01ba.png", new Page[] {}, new Page[] {});
            planet1 = new Planet1(blub);
            planet1Pages = planet1.pages;
            planet1EpilPages = planet1.epilScene;
            currentState = GameState.PLANET1; 
            System.out.print(currentState);
       }
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
