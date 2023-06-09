public class Planet2 extends Planet{
  Page[] startScene = new Page[] {
    
    new Page(0, new String[] {"Arriving on Planet002: Nephides, a planet mainly composed of water, forcing the citizens to travel by canoes and submarines and their homes to be atop large, durable rafts. Despite how interesting these water-dwelling species may seem to be, with their glowing skin and vibrant colors, they are quite dangerous as well."}, "Scenes\\TitleScreen.png"),
    new Page(1, new String[] {"You observe your surroundings. Your boots are already drenched with water and the atmosphere is moist."}, "Scenes\\planet02aa.png"),
    new Page(2, new String[] {"You see vast, open waters and you take a deep breath of the salty air that reminds you of the oceans back home. You see a small canoe floating across out of the corner of your eye."}, "Scenes\\planet02aa.png"),
    new Page(3, new String[] {"Looking closer, you see a figure leading the canoe toward you. He wears a heavy cape, a tight, blue vest, and an assortment of bags. Although his attire does not look waterproof, the figure remained dry. Somehow, he is holding a book while rowing at the same time."}, "Scenes\\planet02aa.png"),
    new Page(4, new String[] {blub + ": \"Hey there! I'm " + blub + ", and I have been traveling for quite some time now for a place to call home. Might I ask you a bit about this planet of yours?\""}, "Scenes\\planet02aa.png"),
    new Page(5, new String[] {"Vastu: \"Ah, a fellow wanderer... My name is Vastu Syent. Please, ask away.\""}, "Scenes\\planet02aa.png"),
    new Page(6, new String[] {"Vastu is a bit reserved and reluctant to answer your questions, but seems kind nonetheless. "}, "Scenes\\planet02aa.png"),
    new Page(7, new String[] {blub + ": \"What is there to this planet? From what I can tell, there is only a lot of water.\""}, "Scenes\\planet02aa.png"),
    new Page(8, new String[] {"At this, Vastu lets out a heartening laugh, and as if his smile is contagious, you begin to smile as well. "}, "Scenes\\planet02aa.png"),
    new Page(9, new String[] {"Vastu: \"My apologies, + " + blub + ". I do not mean to laugh at you. It's just that Nephides may seem simple at first glance, but it really is full of life. There is never a dull moment here.\""}, "Scenes\\planet02aa.png"),
    new Page(10, new String[] {"Vastu: \"In fact, I consider myself an explorer of sorts. My goal is to document every living specimen and environment that I can, though it can be a bit lonely at times.\""}, "Scenes\\planet02aa.png"),
    new Page(11, new String[] {"You want to reach out to Vastu, to be able to cure him of his loneliness but you wonder if Vastu would even want you to come along with him."}, "Scenes\\planet02aa.png"),
    new Page(12, new String[] {blub + ": \"If it's alright with you, may I join you in your adventures for a while? I would love to explore this planet and the wonders that you speak of. Plus, I am in need of a guide.\""}, "Scenes\\planet02aa.png"),
    new Page(13, new String[] {"As you demonstrate your interest in Nephides, Vastu beams at you, ready to tell you all about his planet."}, "Scenes\\planet02aa.png"),
    new Page(14, new String[] {"Vastu: \"That would be lovely.\""}, "Scenes\\planet02aa.png"),
    new Page(15, new String[] {"Vastu leads you onto his canoe and reveals a small trapdoor on the bottom of the boat. Pulling open the door, Vastu unveils the stairs to the place he calls home."}, "Scenes\\planet02aa.png"),
    new Page(16, new String[] {"Vastu: \"Come on in. Make sure to watch your step.\""}, "Scenes\\planet02aa.png"),
    new Page(17, new String[] {"After thoroughly investigating Vastu’s home, you fall deeper and deeper in love with his homemade library filled with his own journals and drawings, his unique, complex submarine system that runs on hydropower, and ..."}, "Scenes\\planet02ba.png"),
    new Page(18, new String[] {"Vastu: \"Do you have anything you want to see in particular?"}, "Scenes\\planet02ba.png"),
    new Page(19, new String[] {blub + ": \"I'm not sure… I don't even know where to start!\""}, "Scenes\\planet02ba.png"),
    new Page(20, new String[] {"Vastu: \"Well, I have been trying to find the Gargamelian Eel for quite some time now. But, I can't seem to be able to track where it will appear next. Would you mind helping me?\""}, "Scenes\\planet02ba.png"),
    new Page(21, new String[] {blub + ": \"I'll give it my best shot!\""}, "Scenes\\planet02ba.png"),
    new Page(22, new String[] {"MAZE SCENE"}, "Scenes\\planet02ba.png"),
    new Page(23, new String[] {"Vastu: \"You truly are remarkable... Thank you, " + blub + ". Now, we can embark on our journey.\""}, "Scenes\\planet02ba.png"),
    new Page(24, new String[] {"After touring you through the deep seas and introducing you to the plentiful species along the way, Vastu finally stops at the entrance of an underwater cave that leads to the infamous eel."}, "Scenes\\planet02ba.png"),
    new Page(25, new String[] {"Vastu: \"Well, here we are. You've already helped me so much. It was already nice to have someone along my side for once. It was my pleasure guiding you through my planet.\""}, "Scenes\\planet02ba.png"),
    new Page(26, new String[] {"Vastu: \"Would you like to continue on this journey with me?\""}, "Scenes\\planet02ba.png"),
    new Page(27, new String[] {"Despite being underwater, the moonlight seems to reach his eyes as they curl into crescent moons when he smiles, but his hands are fidgeting."}, "Scenes\\planet02ba.png"),
    new Page(28, new String[] {"You notice Vastu nervously push his glasses up the bridge of his nose as he awaits your response. "}, "Scenes\\planet02ba.png"),
    joinVastu,
    new Page(30, new String[] {blub + ": \"I would love to join you, as long as you'll have me.\""}, "Scenes\\planet02ba.png"),
    new Page(31, new String[] {"Vastu smiles brightly at you and together, you both carry on into the cave."}, "Scenes\\planet02ba.png"),
    new Page(32, new String[] {"You feel a rush of excitement course through you, but you also feel at peace. At last, you have found somewhere to call home."}, "Scenes\\planet02ba.png")    
  };
  
  Page[] epilScene = new Page[] {
      new Page(30, new String[] {"Vastu: \"Ah, what a shame. I shall see you off, then.\""},"Scenes\\planet02ba.png"),
  };
  
  int[][] maze2 = new int[][]  {
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

  public Planet2(String blub) {
    this.llamo = blub;
    this.pages = startScene;
    mazeReset();
  }
  
  void renderPlanet() {
    if (planet2Index == 22) {
      color c1 = #B2BEB5;
      color c2 = #006994;
      if (!gameOver) mazeGame(maze2, c1, c2);
      else planet2Index++;
    }
    else {
        resetFont(); 
        planet2Pages[planet2Index].displayPage();
    }
  }
  
  void renderPlanetEpil() {
   planet2EpilPages[planet2EpilIndex].displayPage();
  }
  
  void handlePlanetInput()     {
    //maze controls
    if (planet2Index == 22) {
       mazeInput(maze2);
    }
    //choice page
    else if (planet2Index == 29) {
      if (keyCode == UP)        joinVastu.pickChoice1();
      else if (keyCode == DOWN) joinVastu.pickChoice2();
      
      else if (key == ENTER) {
        if (joinVastu.getChoice() == 1)       planet2Index++; 
        else if (joinVastu.getChoice() == 2) {
          currentState = GameState.BADENDING; 
          System.out.print(currentState);
        }
     }
    }
    //default progression
    else if (key == ' ') {
      if (planet2Index == planet2Pages.length - 1) { 
        currentState = GameState.GOODENDING;
        planet2Index = 0; 
      }
      else {
        planet2Index++; 
        System.out.println(planet2Index);
      }
    }
  }
  
  void handlePlanetEpilInput() {
    if (key == ' ') {
      if (planet1EpilIndex == planet1EpilPages.length - 1) { 
        currentState = GameState.BADENDING;
        System.out.println(currentState);
        planet1EpilIndex = 0; 
      }
      else {
        planet1EpilIndex++; 
        System.out.println(planet1EpilIndex);
      }
    } 
  }
}
