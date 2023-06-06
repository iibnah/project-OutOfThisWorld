public class Planet0 extends Planet {
  public Planet0(String blub) {
   /* 
    Page[] mazePages = new Page[] {
    }
    
    ChoicePage whatDirection = new ChoicePage(16, new String[] {"Lyn: \"" + blub + ", you’re the explorer, which way do you think we should go?\"", "go left", "go right"}, "Scenes\\planet00ba.png", 
          new Page[] {}, new Page[] {});
          
    
    ChoicePage shouldFollow = new ChoicePage(11, new String[] {"You decide to:", "decline their offer", "follow along"}, "Scenes\\planet00ba.png",
          new Page[] {
            new Page(12, new String[] {"Lyn: \"Oh, you don’t want to join us, huh? Well then, sorry but we’re gonna have to put you down. We can’t have anyone tell us off to the authorities, now can we?\""}, "Scenes\\planet00aa.png"),
            new Page(13, new String[] {"Lyn: \"Fire, boys!\""}, "Scenes\\planet00aa.png"),
            //death scene
          },
          new Page[] {
            new Page(12, new String[] {blub + ": \"Sure, I’ll follow along! Where are you guys heading?\""}, "Scenes\\planet00aa.png"),
            new Page(13, new String[] {"Lyn gives a mischievous smirk."}, "Scenes\\planet00aa.png"),
            new Page(14, new String[] {"Lyn: \"We’ll be raiding the most legendary ruins on this planet, hidden under the temples of the abandoned City of Ender that were left to decay, the Newman Vault!\""}, "Scenes\\planet00aa.png"),
            new Page(15, new String[] {"After slipping inside the vault, the Broken Techs and the explorer delve deeper and deeper, dodging many dangerous traps and battling many enemies. They found themselves in a corridor with two paths. The path to the left seems to be a bit worn. The water dripping from the ceiling pool atop the surface, looking dangerously still. The path to the right is overrun with vines, the plant creeping its way into every crevice the ruin has to offer."}, "Scenes\\planet00aa.png"), 
            whatDirection,
          },
*/
    super(blub, 
          new Page[] {
            new Page(0, new String[] {"Upon landing on Lathea, you observe your surroundings. Trees cover almost every inch of the terrain and sky at the same time."}, "Scenes\\planet00aa.png"),
            new Page(1, new String[] {"While surveying the environment, you hear a faint rustling and..."}, "Scenes\\planet00aa.png"),
            new Page(2, new String[] {"You suddenly find yourself surrounded by a group of misfits!"}, "Scenes\\planet00aa.png"),
            new Page(3, new String[] {"The group is equipped with laser blasters, but the guns have been tarnished with rusty handles and corroded nozzles, diminishing their threatening potential."}, "Scenes\\planet00aa.png"),
            new Page(4, new String[] {"At the center, a figure adorned with jewels and trinkets carries the group's flag with its intricate design. They appear to be the leader of the group."}, "Scenes\\planet00aa.png"),
            new Page(5, new String[] {blub + ":\"Hello, native inhabitants! I am a wanderer in space seeking refuge from the clutches of the universe. Please show me to your leader!\""}, "Scenes\\planet00ba.png"),
            new Page(6, new String[] {"Lyn: \"There is no need, for Lyn T. Brook is here at your service. What is it that you need, traveler?\""}, "Scenes\\planet00ba.png"),
            new Page(7, new String[] {"They take a deep bow but you are unsure whether this is merely out of respect or mockery."}, "Scenes\\planet00aa.png"),
            new Page(8, new String[] {blub + ":\"Do you guys have a map of the area on this planet?\""}, "Scenes\\planet00ba.png"),
            new Page(9, new String[] {"Lyn: \"Pshhhh, we don't need maps! We have this entire continent memorized like the back of our hands. Here, why don't you follow us and let us be your guide? I say we give a pretty good tour of this planet.\""}, "Scenes\\planet00aa.png"),
            new Page(10, new String[] {"Hmmm...can you really trust this group of thieves? They seem like fun and traveling in a group sure is safer than being alone, but what if they deem you worthy of being their next victim?"}, "Scenes\\planet00aa.png"),
          //  shouldFollow,
          }
    );
  }
}
