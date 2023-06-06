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
  
  
 int[] add(int[] first, int[] second) {
    int length = first.length < second.length ? first.length
            : second.length;
    int[] result = new int[length];

    for (int i = 0; i < length; i++) {
        result[i] = first[i] + second[i];
    }

    return result;
  }
}
