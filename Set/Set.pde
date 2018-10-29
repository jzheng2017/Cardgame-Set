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
}

void mousePressed() {
   background(200);
 selectCard(cardWidth,cardHeight);
  assignPoint(isSet(selectedCards, false));
   drawAllCards(cardsOnTable);
   printInfo();
}





























//Jiankai Zheng
//ITA-1C
//Hogeschool van Arnhem en Nijmegen
//jk.zheng@hotmail.com
