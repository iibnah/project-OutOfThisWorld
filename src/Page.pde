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
    background(bg);
    fill(#502C60);
    rect(0, 315, 720, 105);
    fill(#A493FD);
  }
}
