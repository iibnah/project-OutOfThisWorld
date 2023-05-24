class Page
{
  int pageNumber; 
  String[] script;
  PImage bg;
  
  Page(int pageNumber, String[] script, String imagePath) {
    this.pageNumber = pageNumber;
    this.script = script;
    bg = loadImage(imagePath);
  }
  
  void displayPage()
  {
    //loading in bg
    background(bg);
    //textbox code
    fill(#502C60);
    rect(0, 315, 720, 105);
    fill(#A493FD);
    rect(15, 330, 690, 75); 
    noStroke();
    fill(#ffffff);
    
    
    //testing printing text
    text(script[0], width/2, 355);
  }
  
  
}
