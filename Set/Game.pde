class Game {
  int amountOfCardsPicked = 0;
  //the cardList gets filled with cards that are generated with the generateCards() function, it returns an array.
  String[] cardList = {}; 
  //keeps track of what cards are on the table, the indexes of the cards will be saved here, the index is the index of the cardList array.
  String[] cardsOnTable = new String[9];

  void pickCards() {
    for (int i = 0; i < cardsOnTable.length; i++) {
      if (cardsOnTable[i] == null || cardsOnTable[i] == "") {
        cardsOnTable[i] = cardList[amountOfCardsPicked];
        amountOfCardsPicked++;
      }
    }
  }
}
////checks how many sets there are on the table
//int activeSets() {
//}
