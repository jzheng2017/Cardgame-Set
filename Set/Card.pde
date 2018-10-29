//class Card {
  //123 means 1, 2 or 3 figures. RGB means if the figure is red green or blue. Red means which shape the figure has, (R)ectangle, (E)llipse or (T)riangle
  String[] cardProperties = {"123", "rgb", "ret"}; 
  //all settings will be setted here
  float cardWidth;
  float cardHeight;
  float cardMargin = 20;
  //X and Y coordinates of the cards on the table
  final float cardX = 20;
  final float cardY = 20;
  void setValues() {
    cardWidth = width / 5;
    cardHeight = cardWidth * 1.2;
    cardMargin = 20;
  }
  //generates a list of cards based on the card properties that is defined above (see variable 'String[] cardProperties')
  //it returns a list of cards that are shuffled in a random order using the Shuffle function
  String[] generateCards() {
    String firstElement, secondElement, thirdElement; //the values of the cardProperties, for example, firstElement contains either 1, 2 or 3 from the cardProperties array
    String[] cards = {}; // contains the generated cards
    //generates the cards by looping through each element and adding every possible combination, which is 27 in total.
    for (int i = 0; i < cardProperties.length; i++) {
      firstElement = cardProperties[0].substring(i, i+1);
      for (int j = 0; j < cardProperties.length; j++) {
        secondElement = cardProperties[1].substring(j, j+1);
        for (int m = 0; m < cardProperties.length; m++) {
          thirdElement = cardProperties[2].substring(m, m+1);
          cards = append(cards, firstElement + secondElement + thirdElement);
        }
      }
    }

    return cards;
  }
  //a player will call this function when he has selected 3 cards and the function checks whether the cards are a set or not.
  boolean isSet(String[] selectedCards, boolean check) {
    int points = 0;//points to meet the requirement which is 3, if 3 is met then it is a set
    if (selectedCards.length == 3 ) {
      if ((selectedCards[0] != "") && (selectedCards[1] != "") && (selectedCards[2] != "")) {
        for (int i = 0; i < 3; i++) {
          if ((selectedCards[0].substring(i, i+1).equals(selectedCards[1].substring(i, i+1))) && (selectedCards[1].substring(i, i+1).equals(selectedCards[2].substring(i, i+1)))&& (selectedCards[0].substring(i, i+1).equals(selectedCards[2].substring(i, i+1)))) {//all card property same?
            points++;//if it is then assign point
          } else if ((!selectedCards[0].substring(i, i+1).equals(selectedCards[1].substring(i, i+1))) && (!selectedCards[1].substring(i, i+1).equals(selectedCards[2].substring(i, i+1)))&& (!selectedCards[0].substring(i, i+1).equals(selectedCards[2].substring(i, i+1)))) {//all card property different?
            points++;
          }
        }
        if (points < 3 && !check) {
          clearSelection();
          println("Geen set");
        }
      }
    }
    return (points == 3) ? true : false;
  }


  //shuffles the generated cards in a random order and returns it with a string array
  String[] Shuffle(String[] cards) {
    String[] shuffledCards = new String[27];//max 27 cards
    boolean shuffled = false;//if the card has been shuffled or not, if not then it should be shuffled again
    int randomIndex = -1;//random index for the shuffle
    for (int i = 0; i < cards.length; i++) {
      shuffled = false;
      while (!shuffled) {//if the card hasn't been shuffled yet it should try again
        randomIndex = (int)random(0, 27);
        if (shuffledCards[randomIndex] == null || shuffledCards[randomIndex] == "") {//only add the card to the array if it the array element is not occupied by another card
          shuffledCards[randomIndex] = cards[i];
          shuffled = true;
        }
      }
    }
    return shuffledCards;
  //}
}
