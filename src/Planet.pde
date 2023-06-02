public class Planet{
  private String blub; 
  public Page[] pages;
  
  public Planet(){}
  
  public Planet(String blub, Page[] pages) {
    this.blub = blub;
    this.pages = pages;
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
