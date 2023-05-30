public class ChoicePage extends Page {
    private int choice;
    Page[] choice1path;
    Page[] choice2path;
    
    ChoicePage(int pageNumber, String[] script, String imagePath, Page[] choice1path, Page[] choice2path) {
      super(pageNumber, script, imagePath);
      this.choice1path = choice1path;
      this.choice2path = choice2path;
      choice = 0;
    }
    
       
    @Override
    void displayPage() {
        // loading in bg
        background(bg);
        // textbox code
        fill(#502C60);
        rect(0, 315, 720, 105);
        fill(#A493FD);
        rect(15, 330, 690, 75);
        // text
        textSize(10);
        noStroke();
        fill(#ffffff);
        
        text(script[0], width/2, 355);
        
        // choices
        textAlign(CENTER, CENTER);
        fill(#ffffff);
        text(script[1], width/2, 400);
        text(script[2], width/2, 420);
        
        // highlight select
        if (choice == 1) {
            strokeWeight(2);
            stroke(#ffffff);
            noFill();
            rect(width/2 - 60, 390, 120, 15);
        } else if (choice == 2) {
            strokeWeight(2);
            stroke(#ffffff);
            noFill();
            rect(width/2 - 60, 410, 120, 15);
        }
    }
   public void pickChoice1() {choice = 1;} 
   public void pickChoice2() {choice = 2;}
   
   public int getChoice() {return choice;}
}
