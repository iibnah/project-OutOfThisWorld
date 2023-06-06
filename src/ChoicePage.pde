
public class ChoicePage extends Page {
    private int choice;
    private Page[] choice1path;
    private Page[] choice2path;
    
    ChoicePage(int pageNumber, String[] script, String imagePath, Page[] choice1path, Page[] choice2path) {
        super(pageNumber, script, imagePath);
        this.choice1path = choice1path;
        this.choice2path = choice2path;
        choice = 0;
    }
    
    @Override
    public void displayPage() {
        background(bg);
        
        // textbox
        noStroke();
        fill(#502C60);
        rect(0, 315, 720, 105);
        fill(#A493FD);
        rect(15, 330, 690, 75);
        
        // text
        textSize(10);
        textAlign(CENTER, CENTER);
        fill(#ffffff);
        text(script[0], width/2, 340);
        
        // choices
        textAlign(CENTER, CENTER);
        text(script[1], width/2, 370);
        text(script[2], width/2, 390);
        
        // highlight select
        if (choice == 1)      pickChoice1();
        else if (choice == 2) pickChoice2();
    }
  
    public void pickChoice1() {
        choice = 1;
        stroke(#ffffff);
        noFill();
        rect(width/2 - 60, 360, 120, 15);
    } 
    
    public void pickChoice2() {
        choice = 2;
        stroke(#ffffff);
        noFill();
        rect(width/2 - 60, 380, 120, 15);
    }
    
    public int getChoice() {
        return choice;
    }
}
