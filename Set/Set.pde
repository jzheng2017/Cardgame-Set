//global class declarations
Game game = new Game();
Player player = new Player();
Card card = new Card(); 
void setup() {
  size(1000, 800);
  card.setValues();
  game.cardList = card.generateCards();//generate all cards for the game(27)
  game.cardList = card.Shuffle(game.cardList);//shuffle the generated cards in a random order
  game.pickCards();//fill the table with cards(9) (THIS IS NOT DRAWING THE CARDS, MERELY FILLING THE ARRAY!)
  printArray(game.cardsOnTable);
  //player.selectedCards = ("1gr","3br","2rr");
  println(width);
  drawAllCards(game.cardsOnTable);
  print(card.isSet(player.selectedCards));
}

void draw() {
}





























//Jiankai Zheng
//ITA-1C
//Hogeschool van Arnhem en Nijmegen
//jk.zheng@hotmail.com
