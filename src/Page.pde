class Page
{
  int[] outcomes = new int[5];
  String[] choices = new String[5];
  String content;
  //////image
  //////etc
  
  Page(int[] pages, String[] options, String text)
  {
    outcomes = pages;
    choices = options;
    content = text;
  }

  int goToPage(int userInput)
  {
    return outcomes[userInput];
  }
  
  void displayPage()
  {
    ////TODO
  }
}
