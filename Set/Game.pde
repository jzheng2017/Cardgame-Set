//class Game {
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
    setValues();
    cardList = generateCards();//generate all cards for the game(27)
    cardList = Shuffle(cardList);//shuffle the generated cards in a random order
    pickCards();//fill the table with cards(9) (THIS IS NOT DRAWING THE CARDS, MERELY FILLING THE ARRAY!)
  }
  //checks how many sets there are on the table
  int activeSets() {
    int counter = 0;
    String[] cards = {"", "", ""};
    for (int i = 0; i <= cardsOnTable.length; i++) {
      for (int j = i + 1; j <= cardsOnTable.length - i; j++) {
        for (int k = j + 1; k <= cardsOnTable.length - j; k++) {
          cards[0] = cardsOnTable[i];
          cards[1] = cardsOnTable[j];
          cards[2] = cardsOnTable[k];
          if (isSet(cards, true)) {
            counter++;
          }
        }
      }
    }

    return counter;
  }
//}
