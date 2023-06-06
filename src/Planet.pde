public class Planet{
  String llamo; 
  Page[] pages;
  
  public Planet(){}
  
  public Planet(String llamo, Page[] pages) {
    this.llamo = llamo;
    this.pages = pages;
  }  
   
  public void runPlanet(){
    
  }
  
  Page[] add(Page[] first, Page[] second) {
      Page[] result = new Page[first.length + second.length];
      for (int i = 0; i < first.length; i++) {
          result[i] = first[i];
      }
      for (int j = 0; j < second.length; j++) {
          result[j + first.length] = second[j];
      }
      return result;
  }
}
