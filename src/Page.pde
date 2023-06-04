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
        int start = 0; 
        for(int index = 1 ; index < input.length(); index++){
            if (index % 113 == 0) {
                if (input.substring(index, index+1).equals(" ")) {
                    output += input.substring(start, index + 1) + "\n";
                    start = index + 1; 
                }
                else {                    
                    while (!input.substring(index, index+1).equals(" ")) {
                        index--; 
                    } 
                    output += input.substring(start, ++index ) + "\n";
                    start = index;
                    ++index; 
                }
            } 
        }
        output += input.substring(start); 
        return output; 
//}

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
