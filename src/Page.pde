class Page {
  int pageNumber; 
  String[] script;
  PImage bg;
  PFont myFont;
  
  Page(int pageNumber, String[] script, String imagePath) {
    this.pageNumber = pageNumber;
    this.script = script;
    bg = loadImage(imagePath);
    myFont = createFont("Courier New Bold", 10);
    textFont(myFont);
  }
  
  String wrapify( String input) {
      String output = "";
      int index = 0;
      while (index < input.length()) {
          if (index % 113 == 0 && index != 0) {
              if (input.charAt(index) != ' ') {
                  int tempIndex = index;
                  while (input.charAt(tempIndex) != ' ') {
                      tempIndex--;
                  }
                  output += input.substring(0, tempIndex) + "\n";
                  input = input.substring(tempIndex + 1);
                  index = 0;
              } 
              else {
                  output += input.substring(0, index) + "\n";
                  input = input.substring(index + 1);
                  index = 0;
              }
          }
          index++;
      }
      output += input;
      return output;
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
    
    //text
    noStroke();
    fill(#ffffff);
    
    //testing printing text
    text(wrapify(script[0]), width/2, 355);
  }
}
