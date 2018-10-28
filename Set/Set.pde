//global class declarations
Game game = new Game();
Player player = new Player();
Card card = new Card(); 

void setup() {
  size(1000, 800);
    game.Start();
    drawAllCards(game.cardsOnTable);
  //  assignPoint(card.isSet(player.selectedCards));
  //  drawAllCards(game.cardsOnTable);
    printInfo();
}

void draw() {
}

void mousePressed() {
   background(200);
   player.selectCard(card.cardWidth, card.cardHeight);
  assignPoint(card.isSet(player.selectedCards, false));
   drawAllCards(game.cardsOnTable);
   printInfo();
}





























//Jiankai Zheng
//ITA-1C
//Hogeschool van Arnhem en Nijmegen
//jk.zheng@hotmail.com
