class Player {
  //the cards the player selected, max 3 cards can be selected.
  String[] selectedCards = {"", "", ""};

  //amount of sets the player found
  int setsFound;


  //this function will be called when a player selects a card, the index will be passed as a paramater and added to the selectedCards array.
  void selectCard(float cardWidth, float cardHeight) {
boolean changed = false;
    String card = "";
    for (int i = 0; i < game.cardsXY.length; i++) {

      if ((mouseX >= game.cardsXY[i][0] && mouseX <= game.cardsXY[i][0] + cardWidth) && (mouseY >= game.cardsXY[i][1] && mouseY <= game.cardsXY[i][1] + cardHeight)) {
        for (int j = 0; j < selectedCards.length; j++) {
          if (selectedCards[j].equals(game.cardsOnTable[i]) && !changed) {
            selectedCards[j] = "";
        changed = true;
          } else if (selectedCards[j] == "" && !changed) {
            selectedCards[j] = game.cardsOnTable[i];
        changed= true;
          }
        }
      }
    }
  }
}
