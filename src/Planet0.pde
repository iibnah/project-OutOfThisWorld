public class Planet0 extends Planet {
  public Planet0(String blub) {
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
          }
    );
  }
}
