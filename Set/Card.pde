class Card{
//123 means 1, 2 or 3 figures. RGB means if the figure is red green or blue. Red means which shape the figure has, (R)ectangle, (E)llipse or (T)riangle
String[] cardProperties = {"123","rgb","ret"}; 
//the cardList gets filled with cards that are generated with the generateCards() function, it returns an array.
String[] cardList = generateCards(); 
//keeps track of what cards are on the table, the indexes of the cards will be saved here, the index is the index of the cardList array.
String[] cardsOnTable = {};
}

//generates a list of cards based on the card properties that is defined above (see variable 'String[] cardProperties')
//it returns a list of cards that are shuffled in a random order using the Shuffle function
String[] generateCards(){
  
}
//a player will call this function when he has selected 3 cards and the function checks whether the cards are a set or not.
boolean isSet(String[] selectedCards){
  
}
//checks how many sets there are on the table
int activeSets(){
  
}

//shuffles the generated cards in a random order and returns it with a string array
String[] Shuffle(){
  
}
