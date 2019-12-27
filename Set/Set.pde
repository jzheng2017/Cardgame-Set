//global class declarations
//Game game = new Game();
//Player player = new Player();
//Card card = new Card(); 

void setup() {
  size(1000, 800);
  Start();
  drawAllCards(cardsOnTable);
  //  assignPoint(card.isSet(player.selectedCards));
  //  drawAllCards(game.cardsOnTable);
  printInfo();
}

void draw() {
  background(200);
  drawAllCards(cardsOnTable);
  printInfo();
  drawButton();
}

void mousePressed() {
  selectCard(cardWidth, cardHeight);
  assignPoint(isSet(selectedCards, false));
  newGame();
}





























//Jiankai Zheng
//ITA-1C
//Hogeschool van Arnhem en Nijmegen
//jk.zheng@hotmail.com
