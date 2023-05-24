public class Planet{
  private String[] characters; 
  private static String blub; 
  private String description; 
  
  public Planet(){}
  
  public Planet(String[] characters, String blub, String description) {
    this.characters = characters;
    this.blub = blub;
    this.description = description;
  }
  
  public boolean endChoice(boolean choice){
    return choice;
  }
  
  public void runPlanet(){
    
  }
  
  public String getBlub(){
    return blub; 
  }
  
  public void setBlub(String blub){
    this.blub = blub; 
  }
  
}
