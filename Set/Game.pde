class Game {
  int amountOfCardsPicked = 0;
  //the cardList gets filled with cards that are generated with the generateCards() function, it returns an array.
  String[] cardList = {}; 
  //keeps track of what cards are on the table, the indexes of the cards will be saved here, the index is the index of the cardList array.
  String[] cardsOnTable = new String[9];
  float[][] cardsXY = new float[9][2];

  void pickCards() {
    for (int i = 0; i < cardsOnTable.length; i++) {
      if ((cardsOnTable[i] == null || cardsOnTable[i] == "") && amountOfCardsPicked < cardList.length) {
        cardsOnTable[i] = cardList[amountOfCardsPicked];
        amountOfCardsPicked++;
      }
    }
  }


  void Start() {
    card.setValues();
    game.cardList = card.generateCards();//generate all cards for the game(27)
    game.cardList = card.Shuffle(game.cardList);//shuffle the generated cards in a random order
    game.pickCards();//fill the table with cards(9) (THIS IS NOT DRAWING THE CARDS, MERELY FILLING THE ARRAY!)
  }
}
////checks how many sets there are on the table
//int activeSets() {
//}
