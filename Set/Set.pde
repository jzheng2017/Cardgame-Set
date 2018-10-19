//global class declarations
Game game = new Game();
Player player = new Player();
void setup(){
  Card card = new Card(); //card Class declaration
  game.cardList = card.generateCards();//generate all cards for the game(27)
  game.cardList = card.Shuffle(game.cardList);//shuffle the generated cards in a random order
  game.pickCards();//fill the table with cards(9) (THIS IS NOT DRAWING THE CARDS, MERELY FILLING THE ARRAY!)
 printArray(game.cardsOnTable);
 String[] test = {"1gt","3be","2rr"};
 print(card.isSet(test));
}

void draw(){
  
}





























//Jiankai Zheng
//ITA-1C
//Hogeschool van Arnhem en Nijmegen
//jk.zheng@hotmail.com
