public class Planet0 extends Planet {
  Page[] startScene = new Page[] {
      new Page(0, new String[] {"Upon landing on Lathea, you observe your surroundings. Trees cover almost every inch of the terrain and sky at the same time."}, "Scenes\\planet00aa.png"),
      new Page(1, new String[] {"While surveying the environment, you hear a faint rustling and..."}, "Scenes\\planet00aa.png"),
      new Page(2, new String[] {"You suddenly find yourself surrounded by a group of misfits!"}, "Scenes\\planet00aa.png"),
      new Page(3, new String[] {"The group is equipped with laser blasters, but the guns have been tarnished with rusty handles and corroded nozzles, diminishing their threatening potential."}, "Scenes\\planet00aa.png"),
      new Page(4, new String[] {"At the center, a figure adorned with jewels and trinkets carries the group's flag with its intricate design. They appear to be the leader of the group."}, "Scenes\\planet00ab.png"),
      new Page(5, new String[] {blub + ":\"Hello, native inhabitants! I am a wanderer in space seeking refuge from the clutches of the universe. Please show me to your leader!\""}, "Scenes\\planet00ac.png"),
      new Page(6, new String[] {"Lyn: \"There is no need, for Lyn T. Brook is here at your service. What is it that you need, traveler?\""}, "Scenes\\planet00ab.png"),
      new Page(7, new String[] {"They take a deep bow but you are unsure whether this is merely out of respect or mockery."}, "Scenes\\planet00ab.png"),
      new Page(8, new String[] {blub + ":\"Do you guys have a map of the area on this planet?\""}, "Scenes\\planet00ac.png"),
      new Page(9, new String[] {"Lyn: \"Pshhhh, we don't need maps! We have this entire continent memorized like the back of our hands. Here, why don't you follow us and let us be your guide? I say we give a pretty good tour of this planet.\""}, "Scenes\\planet00ab.png"),
      new Page(10, new String[] {"Hmmm...can you really trust this group of thieves? They seem like fun and traveling in a group sure is safer than being alone, but what if they deem you worthy of being their next victim?"}, "Scenes\\planet00ac.png"),
      new Page(11, new String[] {"You decide to join them."}, "Scenes\\planet00ac.png"),
      new Page(12, new String[] {blub + ": \"Sure, I'll follow along! Where are you guys heading?\""}, "Scenes\\planet00ac.png"),
      new Page(13, new String[] {"Lyn gives a mischievous smirk."}, "Scenes\\planet00ab.png"),
      new Page(14, new String[] {"Lyn: \"We'll be raiding the most legendary ruins on this planet, hidden under the temples of the abandoned City of Ender that were left to decay, the Newman Vault!\""}, "Scenes\\planet00ab.png"),
      new Page(15, new String[] {"After slipping inside the vault, the Broken Techs and the explorer delve deeper and deeper, dodging many dangerous traps and battling many enemies. They found themselves in a corridor with two paths."}, "Scenes\\planet00ba.png"), 
      new Page(16, new String[] {"The path to the left seems to be a bit worn. The water dripping from the ceiling pool atop the surface, looking dangerously still. The path to the right is overrun with vines, the plant creeping its way into every crevice the ruin has to offer."}, "Scenes\\planet00ba.png"),
      new Page(17, new String[] {"Lyn: \"" + blub + ", you're the explorer, which way do you think we should go?\""}, "Scenes\\planet00ba.png"),
      new Page(18, new String[] {"After going that direction, the group found themselves back in the same corridor."}, "Scenes\\planet00ab.png"),
      new Page(19, new String[] {blub + " :\"We're going in a loop! This must be a maze then! Okay, follow along guys, mazes are my specialty…\""}, "Scenes\\planet00ab.png"),
      new Page(20, new String[] {"MAZE SCENE"}, "Scenes\\planet00ab.png"), /* maze */  
      new Page(21, new String[] {"Lyn: \"Woah " + blub + ". I'm glad we decided to let you tag along after all.\""}, "Scenes\\planet00ab.png"),
      new Page(22, new String[] {blub + ": \"What do you mean by that...?\""}, "Scenes\\planet00ab.png"),
      new Page(23, new String[] {"Lyn: \"To be honest with you, we were going to use you as bait for a trap if we needed to, but good thing it never came down to that!\""}, "Scenes\\planet00ab.png"),
      new Page(24, new String[] {"Sweat runs down your cheek, but Lyn gives you a genuine smile for the first time and you ease up a bit."}, "Scenes\\planet00ab.png"),
      new Page(25, new String[] {"BrokenTech Bandit: \"The treasure! There, it's right in front of us!\""}, "Scenes\\planet00ab.png"),
      new Page(26, new String[] {"Lyn: \"Hold on, boys. Don't go just yet. There may be a trap laying ahead. I'll go, instead.\""}, "Scenes\\planet00ab.png"),
      new Page(27, new String[] {"Lyn gracefully strides over to the treasure, their every step carefully planned and executed, and analyzes the display."}, "Scenes\\planet00ab.png"),
      new Page(28, new String[] {"Lyn: \"Hmm, it's a simple weight trap, but surely that can't be all, right? Oh well.\""}, "Scenes\\planet00ab.png"),
      new Page(29, new String[] {"With one swift motion, Lyn successfully swaps a bag filled with sand for the treasure."}, "Scenes\\planet00ab.png"),
      new Page(30, new String[] {"Lyn beams over at you, treasure in hand, but all of a sudden you hear a distant rumbling. You see a giant boulder rolling its way over to Lyn and the crew."}, "Scenes\\planet00ab.png"),
      new Page(31, new String[] {blub + "\"Everyone, RUN!!!\""}, "Scenes\\planet00ab.png"),
      new Page(32, new String[] {"The bandits heed your warning and everyone is able to escape safely just in time before the boulder crashes into the exit, nearly running over Lyn’s foot. "}, "Scenes\\planet00ab.png"),
      new Page(33, new String[] {"Out of breath, you sit down on the grassy field to calm your heart. Lyn is making their way over to you."}, "Scenes\\planet00ab.png"),
      new Page(34, new String[] {"Lyn: \"It's been a pleasure having you on our team, " + blub + ". I'm gonna hate having to see you leave...\""}, "Scenes\\planet00ab.png"),
      new Page(35, new String[] {"\"You know, we do have a spot open on our crew...and we have been looking for someone to fill the spot. How about it? Will you join us?\""}, "Scenes\\planet00ab.png"),
      new Page(36, new String[] {"Lyn flashes another genuine smile at you, their eyes twinkling as brightly as the gems around their neck."}, "Scenes\\planet00ab.png"),
      joinLyn,
      new Page(38, new String[] {blub + " :\"I think… this might be the perfect place for me.\""}, "Scenes\\planet00ab.png"),
      new Page(39, new String[] {"Lyn: \"Wonderful! You're gonna love being with us and we're gonna love having you with us.\""}, "Scenes\\planet00ab.png"),
      new Page(40, new String[] {"And, we really did need someone after Bottomwell got crushed by the Golem Guardian of Tignera."}, "Scenes\\planet00ab.png"),
      new Page(41, new String[] {"Lyn's last statement should spark a little worry, but instead you feel at peace. At last, you have found a home."}, "Scenes\\planet00ab.png"),
    };
  
  Page[] epilScene = new Page[] {
      new Page(38, new String[] {"Lyn: \"Aw, unfortunate. I really am going to miss you...Safe travels, " + blub + ".\""}, "Scenes\\planet00ab.png"),
      new Page(39, new String[] {"With a solemn bow, Lyn sees you off. They open your palms and place a little rusted jewel into your hands."}, "Scenes\\planet00ab.png"),
      new Page(40, new String[] {"Lyn: \"A little something to remember me by.\""}, "Scenes\\planet00ab.png"),
      new Page(41, new String[] {"After exchanging your farewells and launching back into space, you wonder if you made the right choice. "}, "Scenes\\planet00ab.png"),
  };

  public Planet0(String blub) {
    this.llamo = blub;
    this.pages = startScene;
    mazeReset();
  }
  
  void renderPlanet() {
    if (planet0Index == 20) {
      color c1 = #B2BEB5;
      color c2 = #01796f;
      if (!gameOver) mazeGame(maze2, c1, c2);
      else planet0Index++;
    }
    else {
        resetFont(); 
        planet0Pages[planet0Index].displayPage();
    }
  }
  
  void renderPlanetEpil() {
   planet0EpilPages[planet0EpilIndex].displayPage();
  }
  
  void handlePlanetInput() {
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
        currentState = GameState.GOODENDING;
        planet0Index = 0; 
      }
      else {
        planet0Index++; 
        System.out.println(planet0Index);
      }
    }  
  }
  
  void handlePlanetEpilInput() {
    if (key == ' ') {
      if (planet0EpilIndex == planet0EpilPages.length - 1) {
        joinSenhar = new ChoicePage(35, new String[] {"You decide to: ", "join her", "refuse"}, "Scenes\\planet01ba.png", new Page[] {}, new Page[] {});
        planet1 = new Planet1(this.llamo);
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

}
